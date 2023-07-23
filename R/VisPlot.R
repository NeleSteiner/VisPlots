
#' During the past two semesters we had to create numerous plots and we
#' realized that it would be much easier if users could easily plot data without
#' struggling with the process. The `visplots` package is designed to minimize
#' the effort required to create high-quality plots.
#'
#' @description Creates a scatter plot using ggplot2.
#' Discover relationships and patterns between two numerical variables with a
#' scatter plot, ideal for understanding correlations and identifying outliers.
#' @title Scatter plot
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. All objects will be transformed into a fortified
#' data.frame. You can refer to the fortify() function to understand which
#' variables will be created. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilized as the layer data.
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

scatter_plot <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                        colour = NULL, size = NULL,
                        title = "Scatter Plot") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = {{x}}, y = {{y}})) +
    geom_point(colour = NULL, size = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a jitter plot using ggplot2.
#' Uncover the distribution of data points along a single axis, revealing the
#' density and spread of values, particularly useful for smaller datasets.
#' @title Jitter plot
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. All objects will be transformed into a fortified
#' data.frame. You can refer to the fortify() function to understand which
#' variables will be created. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilized as the layer data.
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
#'             xlab = "release year", ylab = "number of evaluations per year",
#'             colour = "lightgreen",
#'             title = "number of evaluations per year through release years")

jitter_plot <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                        colour = NULL, title = "Jitter Plot") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = {{x}}, y = {{y}})) +
    geom_jitter(color = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a jitter plot with different shapes using ggplot2.
#' @title Jitter plot with different shapes
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. All objects will be transformed into a fortified
#' data.frame. You can refer to the fortify() function to understand which
#' variables will be created. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilized as the layer data.
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
#'             xlab = "beer price", ylab = "beer consumption",
#'             shape = "circle", colour = "orange",
#'             title = "Relationship between beer consumption and beer price",
#'             subtitle = "depending on the number of visitors per day")

jitter_plot_shape <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                             shape = NULL, colour = NULL,
                             title = "Jitter plot with point shapes") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = {{x}}, y = {{y}})) +
    geom_point(size = NULL, color = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a line chart using ggplot2.
#' Visualise trends and changes in data over continuous intervals, perfect for
#' time-series data or any dataset with a natural ordering.
#' @title Line chart
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. All objects will be transformed into a fortified
#' data.frame. You can refer to the fortify() function to understand which
#' variables will be created. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilized as the layer data.
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

line_chart <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "blue", title = "Line chart") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = {{x}}, y = {{y}})) +
  geom_line(color = NULL) +
  xlab(xlab) +
  ylab(ylab) +
  ggtitle(title)
}

#' @description Define farbcodes, so it will be easier to choose colours.
#' @title Colour
#' @param colour The colour for the points.

colour <- "colour"
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
black <- "#000000"
