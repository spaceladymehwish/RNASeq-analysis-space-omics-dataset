library(ggplot2)
library(wesanderson)
library(viridis)
library(cowplot)
library(ggpubr)

data <- read.delim("C:/Users/Salam/Desktop/go/CC.txt", sep = "\t", header = TRUE, check.names = F)
p.value <- data$PValue
names(p.value) <- data$PValue
plot <- ggplot(data, aes(x=data$Term, y=data$Percent, fill = p.value)) + 
  geom_bar(stat = "identity", colour = "gray") + coord_flip() + theme_bw() + 
  scale_fill_continuous(low = "#32CD32", high = "#90EE90") +
  theme(legend.position = "right")
plot

COMBINING ALL

plot_grid(plotBP,plotCC,plotMF,ncol = 1)

library(ggplot2)


mh <- mehwish_Book1
mh$GO_Terms <- factor(mh$GO_Terms, levels = mh$GO_Terms[order(mh$Enrichment_type)])

mh_plot <- ggplot(mh, aes(y = GO_Terms, x = P.Value, fill = Enrichment_type)) + geom_bar(stat = "identity")
mh_plot



mh <- Book1
mh$GO_Terms <- factor(mh$GO_Terms, levels = mh$GO_Terms[order(mh$Enrichment_type)])

mh_plot <- ggplot(mh, aes(y = GO_Terms, x = P.Value, fill = Enrichment_type)) + 
  geom_bar(stat = "identity") + labs(x = "-log10 (P. Value)", y = "GO Terms")
mh_plot
