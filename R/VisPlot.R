
#' Simplifize the visualisation of plots. In the past to semester we did have to
#' plot many plots and we thought that it would be easier, if users would know
#' exactly how they have to plot something. The package visplots is there to
#' minimalize the work to write a good plot.
#'
#' Creates a scatter plot using ggplot2.
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be shown on the x-axis.
#' @param y The variable to be shown on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the points.
#' @param size The size of the points.
#' @param title The title of the plot.
#' @export
#'
#' @examples
#' scatter_plot(data = oktoberfest_daten, x = jahr, y = besucher_gesamt,
#'             xlab = "year", ylab = "number of visitors (in millions)",
#'             colour = "purple", size = 3,
#'             title = "number of vistors of the Oktoberfest per year")

scatter_plot <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                        colour = "purple", size = 5, title = "Scatter Plot") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point(colour = colour, size = size) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' Creates a jitter plot with different shapes using ggplot2.
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be shown on the x-axis.
#' @param y The variable to be shown on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param shape The shape for the points.
#' @param colour The colour for the points.
#' @param size The size of the points.
#' @param title The title of the plot.
#' @export
#'
#' @examples
#' jitter_plot_shape(data = oktoberfest_daten, x = bier_preis, y = bier_konsum,
#'             xlab = "price for beer", ylab = "beer consumption", shape = "circle",
#'             colour = "orange",
#'             title = "Relationship between beer consumption and beer price",
#'             subtitle = "depending on the number of visitors per day")

jitter_plot_shape <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                             shape = "circle", colour = "orange",
                             title = "Jitter plot with point shapes") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point(size = "circle", color = colour) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' Creates a line chart using ggplot2.
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be shown on the x-axis.
#' @param y The variable to be shown on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the line.
#' @param title The title of the plot.
#' @export
#'
#' @examples
#' line_chart(data = oktoberfest_daten, x = jahr, y = bier_konsum,
#'             xlab = "year", ylab = "beer consumption (in hl)",
#'             colour = "blue",
#'             title = "beer consumption during the Oktoberfest")

line_chart <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "blue", title = "Line chart") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
  geom_line(color = colour) +
  xlab(xlab) +
  ylab(ylab) +
  ggtitle(title)
}

#' Creates a jitter plot using ggplot2.
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be shown on the x-axis.
#' @param y The variable to be shown on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the jitters.
#' @param title The title of the plot.
#' @export
#'
#' @examples
#'
#' jitter_plot(data = christmas_movies_clean, x = release_year, y = stars,
#'             xlab = "release year", ylab = "number evaluations per year",
#'             colour = "lightgreen",
#'             title = "number of evaluations per year")

jitter_plot <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "lightgreen", title = "Jitter Plot") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_jitter(color = colour) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' Define farbcodes, so it will be easier to choose colours.
#' @param colours The colour for the points.

colours <- "colour"
turquoise <- "#40E0D0"
lightgreen <- "#90EE90"
lightblue <- "#ADD8E6"
purple <- "#A020F0"
magenta <- "#FF00FF"
red <- "#FF0000"
green <- "#00FF00"
blue <- "#0000FF"
yellow <- "#FFFF00"
orange <- "#FF8800"

# Mehr Text in Deskription vielleicht
