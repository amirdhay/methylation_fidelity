library(dplyr)
library(readr)

C_METHY <- "Z"
C_UNMETH <- "z"

# calls dir: location of output files from get_region_methy_calls.sh
METHY_CALL_DIR <- "calls"
REGIONS_FILE <- "read_methy_loci.txt"

get_bool_methy <- function(cl) {
	if (cl==C_METHY) return(TRUE)
	if (cl==C_UNMETH) return(FALSE)
	return(NA)
}


regions <- read_tsv(REGIONS_FILE, col_names=c("reg_type", "reg_coords", "plot_min", "plot_max"), col_types="ccii")

groups <- list(
	"MEF1" = paste0("SXT", LETTERS[1:8], "01"),
	"MEF2" = paste0("SXT", LETTERS[1:8], "02")
)
lib_labels <- list(
	"MEF1" = c("Parent", paste0("Clone ", 1:7)),
	"MEF2" = c("Parent", paste0("Clone ", 1:7))
)

for (i in 1:nrow(regions)) {
	reg_type <- regions$reg_type[i]
	reg_str <- gsub("[:-]", "_", regions$reg_coords[i])
	
	for (grp_name in names(groups)) {
		callfs <- paste0(METHY_CALL_DIR, "/", groups[[grp_name]], ".", reg_type, ".", reg_str, ".txt")
		
		calldf <- NULL
		for (lib_idx in 1:8) {
			cf <- callfs[lib_idx]
			lname <- strsplit(basename(cf), "\\.")[[1]][1]
			cdf <- read_tsv(cf, col_names = c("strand", "readname", "chrom", "pos", "call"), col_types = "cccic") %>%
				mutate(lib = lib_labels[[grp_name]][lib_idx],#lname,
							 methy = sapply(call, get_bool_methy, USE.NAMES=FALSE),
							 pos = as.integer(ifelse(strand=="OB", pos-1, pos))) %>%
				dplyr::select(lib,readname,chrom,pos, methy)
			calldf <- rbind(calldf, cdf)
		}
		calldf$lib <- factor(calldf$lib, levels=lib_labels[[grp_name]])
		# filter out rarely-seen CpGs
		calldf <- calldf %>%
			group_by(chrom, pos) %>%
			filter(n() > 10) %>%
			ungroup()
		
		if (!is.na(regions$plot_min[i]))
			calldf <- filter(calldf, pos >= regions$plot_min[i])
		
		if (!is.na(regions$plot_max[i]))
			calldf <- filter(calldf, pos <= regions$plot_max[i])
		
		pos_nums <- calldf %>%
		  dplyr::select(pos) %>%
			distinct() %>%
			arrange(pos) %>%
			mutate(pos_x=1:n())
		
		read_nums <- calldf %>%
			group_by(lib, readname) %>%
			summarize(minpos=min(pos),
								n_cg=n(),
								mean_methy=sum(methy)/n_cg
								) %>%
			group_by(lib) %>%
			filter(n_cg >= 3) %>%
			arrange(mean_methy, minpos, desc(n_cg)) %>%
			mutate(read_y=1:n()) %>%
			ungroup()
		
		plotdf <- left_join(calldf, pos_nums, by="pos") %>%
			left_join(read_nums[,c("readname", "read_y")], by="readname") %>%
			filter(!is.na(read_y)) %>%
			arrange(lib, read_y, pos)
		
		cpg_means <- plotdf %>%
			dplyr::select(lib, readname, pos, methy) %>%
			distinct() %>%
			group_by(lib, pos) %>%
			summarize(cpg_mean=sum(methy)/n()) %>%
			ungroup() %>%
			mutate(meanstr=sprintf("%0.1f%%", 100*cpg_mean))
		
		plt <- ggplot(plotdf, aes(x=pos, y=read_y)) +
			geom_line(aes(group=read_y)) +
			geom_point(aes(fill=methy), shape=21) +
			geom_text(data=cpg_means, aes(y=-5, label=meanstr), size=2, angle=90, hjust=1) +
			facet_wrap(vars(lib), nrow=1) +
			xlab(NULL) +
			ylab(NULL) +
			theme_minimal() +
			theme(axis.text = element_blank(),
						panel.grid = element_blank(),
						legend.position = "none") +
			scale_y_continuous(trans="reverse", expand=expansion(add = c(0,0),  mult=c(0.03, 0))) +
			scale_fill_manual(values=c(`TRUE`="black", `FALSE`="white"))
			
		reg_str2 <- sprintf("%s_%d_%d", calldf$chrom[1], min(plotdf$pos), max(plotdf$pos))
		ggsave(paste0("methy_calls.", grp_name, ".", reg_type, ".", reg_str2, ".pdf"), plt, width=10, height=6)	
	}
}
