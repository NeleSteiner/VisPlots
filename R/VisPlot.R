#' Scatterplot (ggplot2)
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be seen on the x-axis.
#' @param y The variable to be seen on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the points.
#' @param size The size of the points.
#' @param title The title of the plot.
#' @export

scatterplot <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                        colour = "purple", size = 5, title = "Scatterplot") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point(colour = colour, size = size) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' Line Chart (ggplot2)
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be seen on the x-axis.
#' @param y The variable to be seen on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the line.
#' @param title The title of the plot.
#' @export

line_chart <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "blue", title = "Line Chart") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
  geom_line(color = colour) +
  xlab(xlab) +
  ylab(ylab) +
  ggtitle(title)
}

#' Jitter Plot (ggplot2)
#'
#' @param data The data frame who contains the data.
#' @param x The variable to be seen on the x-axis.
#' @param y The variable to be seen on the y-axis.
#' @param xlab The label for the x-axis.
#' @param ylab The label for the y-axis.
#' @param colour The colour for the jitters.
#' @param title The title of the plot.
#' @export

jitter_plot <- function(data, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "lightgreen", title = "Jitter Plot") {
  library(ggplot2)
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_jitter(color = colour) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}
