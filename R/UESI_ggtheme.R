# Zhi Yi Yeo
# Data-Driven Yale
# June 2018
# Creating a theme used for ggplots in report

# This script builds upon John's work in creating a theme to be used for all plots
# in the UESI project. The function created here can be pasted into the start of each R script
# when necessary and thereafter the function can be called for all ggplots

# Setting up the environment
# setwd("~/urban-epi/src/r/chapter plots")

# Import font to be used
# font_import(path = "urban-statistics/Final_Project/fonts",
#             pattern = "MyriadPro-Light.ttf", prompt = FALSE)


# Note: The font might need to be installed within your device in order
# for it to show in the plots. Fonts can be found under
# urban-epi/urban-statistics/Final_Project/fonts

# Save the template as a function to be called whenever plotting something


#' UESI ggplot theme function
#'
#' Standardized theme for ggplots for use in the UESI project. The function follows similar
#' usage as the "theme" function in ggplot2.
#' @keywords UESI ggplot
#' @export
theme_UESI <- function(panel_gridlines = F) {
  if (panel_gridlines == T) {
    ggplot2::theme_bw() +
    ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                   panel.grid.minor = ggplot2::element_blank(),
                   strip.background = ggplot2::element_blank(),
                   panel.background = ggplot2::element_rect(fill = "white"),
                   panel.border = ggplot2::element_rect(color="grey70", fill = NA),
                   axis.ticks = ggplot2::element_line(color="grey70"),
                   plot.caption = ggplot2::element_text(color="grey60"),
                   plot.margin = ggplot2::unit(c(0.5,0.5,0.5,0.5), "cm"),
                   legend.key = ggplot2::element_rect(fill = "white",colour = NA),
                   legend.position = "bottom",
                   text = ggplot2::element_text(family = "Myriad Pro Light",
                                                face = "plain", size = 12)) +
    ggplot2::theme(rect = element_rect(size = 0.25),
                   panel.border = element_rect(fill=NULL, size=0.25),
                   strip.text.x = element_text(angle = 0, hjust = 0),
                   axis.title.y = element_text(angle = 90),
                   axis.text.x = element_text(angle = 90),
                   panel.spacing = unit(1, "lines"),
                   panel.grid.major = element_line(colour="gray", size = 0.25)) +
      ggplot2::scale_y_continuous(breaks = c(0.00, 0.25, 0.50, 0.75, 1.00), expand = c(0,0),
                         labels=c("0.00", "", "0.50", "", "1.00")) +
      ggplot2::scale_x_continuous(breaks = c(0.00, 0.25, 0.50, 0.75, 1.00), expand = c(0,0))
    } else {
      ggplot2::theme_bw() +
      ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
            panel.grid.minor = ggplot2::element_blank(),
            strip.background = ggplot2::element_blank(),
            panel.background = ggplot2::element_rect(fill = "white"),
            panel.border = ggplot2::element_rect(color="grey70", fill = NA),
            axis.ticks = ggplot2::element_line(color="grey70"),
            plot.caption = ggplot2::element_text(color="grey60"),
            plot.margin = ggplot2::unit(c(0.5,0.5,0.5,0.5), "cm"),
            legend.key = ggplot2::element_rect(fill = "white",colour = NA),
            legend.position = "bottom",
            text = ggplot2::element_text(family = "Myriad Pro Light",
                                         face = "plain", size = 12))
  }
}
