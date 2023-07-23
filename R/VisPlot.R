
#' During the past two semesters we had to create numerous plots and we
#' realised that it would be much easier if users could easily plot data without
#' struggling with the process. The `visplots` package is designed to minimise
#' the effort required to create high-quality plots.
#'
#' @description Creates a scatter plot using ggplot2.
#' Discover relationships and patterns between two numerical variables with a
#' scatter plot, ideal for understanding correlations and identifying outliers.
#' @title Scatter Plot
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilised as the layer data.
#' @param x The "x" parameter would define the variable that will be plotted on
#' the horizontal axis.
#' @param y The "y" parameter would define the variable that will be plotted on
#' the vertical axis.
#' @param xlab The "xlab" parameter allows you to specify the label or title for
#' the x-axis in your plot. The x-axis label is essential for effectively
#' communicating the meaning of the data represented on the horizontal axis.
#' @param ylab The "ylab" parameter allows you to specify the label or title for
#' the y-axis in your plot. The y-axis label is crucial for effectively
#' communicating the meaning of the data represented on the vertical axis.
#' @param colour The colour for the points.
#' @param size The size of the points.
#' @param title The title of the plot.
#' @export
#'
#' @examples
#' scatter_plot(data = oktoberfest_daten, x = jahr, y = besucher_gesamt,
#'             xlab = "year", ylab = "number of visitors (in millions)",
#'             colour = "purple", size = 3,
#'             title = "number of visitors of the Oktoberfest per year")

scatter_plot <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                        colour = NULL, size = NULL,
                        title = "Scatter Plot") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = x_var, y = y_var)) +
    geom_point(colour = NULL, size = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a jitter plot using ggplot2.
#' Uncover the distribution of data points along a single axis, revealing the
#' density and spread of values, particularly useful for smaller datasets.
#' @title Jitter Plot
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilised as the layer data.
#' @param x The "x" parameter would define the variable that will be plotted on
#' the horizontal axis.
#' @param y The "y" parameter would define the variable that will be plotted on
#' the vertical axis.
#' @param xlab The "xlab" parameter allows you to specify the label or title for
#' the x-axis in your plot. The x-axis label is essential for effectively
#' communicating the meaning of the data represented on the horizontal axis.
#' @param ylab The "ylab" parameter allows you to specify the label or title for
#' the y-axis in your plot. The y-axis label is crucial for effectively
#' communicating the meaning of the data represented on the vertical axis.
#' @param colour The "colour" parameter is used to specify the colour of the
#' jitters in a jitter plot.
#' @param title The "title" parameter is used to specify the title of the plot.
#' The title provides a clear and concise description of the plot's purpose or
#' the main idea it conveys. It is typically placed above the plot to provide
#' context and help users understand the data being visualised.
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
  ggplot(data = NULL, aes(x = x_var, y = y_var)) +
    geom_jitter(color = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a jitter plot with different shapes using ggplot2.
#' @title Jitter Plot with different shapes
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilised as the layer data.
#' @param x The "x" parameter would define the variable that will be plotted on
#' the horizontal axis.
#' @param y The "y" parameter would define the variable that will be plotted on
#' the vertical axis.
#' @param xlab The "xlab" parameter allows you to specify the label or title for
#' the x-axis in your plot. The x-axis label is essential for effectively
#' communicating the meaning of the data represented on the horizontal axis.
#' @param ylab The "ylab" parameter allows you to specify the label or title for
#' the y-axis in your plot. The y-axis label is crucial for effectively
#' communicating the meaning of the data represented on the vertical axis.
#' @param shape The "shape" parameter is used to specify the shape of the points
#' in a scatter plot or other point-based plots. Points are the individual data
#' markers used to represent the data values in the plot.
#' @param colour The "colour" parameter is used to specify the colour of the
#' jitters in a jitter plot.
#' @param size The "size" parameter is used to specify the size of the points in
#' a scatter plot or other point-based plots. Points are the individual data
#' markers used to represent the data values in the plot.
#' @param title The "title" parameter is used to specify the title of the plot.
#' The title provides a clear and concise description of the plot's purpose or
#' the main idea it conveys. It is typically placed above the plot to provide
#' context and help users understand the data being visualised.
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
                             title = "Jitter Plot with different shapes") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = x_var, y = y_var)) +
    geom_point(size = NULL, color = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    ggtitle(title)
}

#' @description Creates a line chart using ggplot2.
#' Visualise trends and changes in data over continuous intervals, perfect for
#' time-series data or any dataset with a natural ordering.
#' @title Line Chart
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilised as the layer data.
#' @param x The "x" parameter defines the variable whose values will be used to
#' determine the position of the data points along the x-axis. The points are
#' then connected by lines to form the chart. The x-axis displays the values of
#' the x variable at different data points, allowing us to visualise how the
#' values of the y variable (on the y-axis) change with respect to the x
#' variable.
#' @param y The "y" parameter defines the variable whose values will be used to
#' determine the height or position of the points on the y-axis, which are then
#' connected by lines to form the chart. The y-axis displays the values of the y
#' variable at different data points, allowing us to visualise how the values
#' change over time or another continuous variable represented on the x-axis.
#' @param xlab The "xlab" parameter allows you to specify the label or title for
#' the x-axis in your plot. The x-axis label is essential for effectively
#' communicating the meaning of the data represented on the horizontal axis.
#' @param ylab The "ylab" parameter allows you to specify the label or title for
#' the y-axis in your plot. The y-axis label is crucial for effectively
#' communicating the meaning of the data represented on the vertical axis.
#' @param colour The "colour" parameter is used to specify the colour of the
#' lines that connect the data points. Each line corresponds to a different
#' group or category in the data, and the colour parameter allows you to
#' customise the color of each line.
#' @param title The "title" parameter is used to specify the title of the plot.
#' The title provides a clear and concise description of the plot's purpose or
#' the main idea it conveys. It is typically placed above the plot to provide
#' context and help users understand the data being visualised.
#' @export
#'
#' @examples
#' line_chart(data = oktoberfest_daten, x = jahr, y = bier_konsum,
#'             xlab = "year", ylab = "beer consumption (in hl)",
#'             colour = "blue",
#'             title = "beer consumption during the Oktoberfest")

line_chart <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                       colour = "blue", title = "Line Chart") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = x_var, y = y_var)) +
  geom_line(color = NULL) +
  xlab(xlab) +
  ylab(ylab) +
  ggtitle(title)
}

#' @description Creates a box plot using ggplot2.
#' Examine the distribution of data and identify potential outliers and
#' variability among different categories or groups. The boxplot is particularly
#' valuable for comparing data distributions side by side.
#' @title Box Plot
#' @param data A data.frame or any other object provided will be used to replace
#' the default plot data. Alternatively you can use a custom function that
#' takes the plot data as a single argument. The function must return a
#' data.frame, which will be utilised as the layer data.
#' @param x The "x" parameter specifies the variable or the data that will be
#' used to create the box plot. It represents the data that will be grouped or
#' split into different categories to visualise their distribution and
#' variability.
#' @param y The "y" parameter specifies the numerical variable that will be
#' represented on the y-axis of the plot. It is the variable for which the
#' distribution and variability will be visualised using the box plot.
#' @param xlab The "xlab" parameter allows you to specify the label or title for
#' the x-axis in your plot. The x-axis label is essential for effectively
#' communicating the meaning of the data represented on the horizontal axis.
#' @param ylab The "ylab" parameter allows you to specify the label or title for
#' the y-axis in your plot. The y-axis label is crucial for effectively
#' communicating the meaning of the data represented on the vertical axis.
#' @param fill The "fill" parameter is used to specify the variable or data that
#' will be used to fill the boxes. It allows you to colour the boxes based on a
#' categorical variable, providing visual distinction between different groups
#' or categories of data.
#' @param title The "title" parameter is used to specify the title of the plot.
#' The title provides a clear and concise description of the plot's purpose or
#' the main idea it conveys. It is typically placed above the plot to provide
#' context and help users understand the data being visualised.
#' @export
#'
#' @examples
#' box_plot(data = information_full, x = alter, y = interesse,
#'             xlab = "age", ylab = "interest",
#'             title = "correlation of age and interests"),
#'             geom_boxplot(fill = "lightblue"))

box_plot <- function(data = NULL, x, y, xlab = "x-axis", ylab = "y-axis",
                     title = "Box Plot") {
  library(ggplot2)
  ggplot(data = NULL, aes(x = x_var, y = y_var)) +
    geom_boxplot(fill = NULL) +
    xlab(xlab) +
    ylab(ylab) +
    stat_boxplot(geom = "errorbar", width = NULL) +
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
