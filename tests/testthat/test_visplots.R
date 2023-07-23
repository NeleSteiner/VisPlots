context("Test visplots function")

test_that("Scatter plot function works correctly", {
  test_data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
  plot_result <- scatter_plot(test_data, x = x, y = y, xlab = "x-axis",
                              ylab = "y-axis", colour = "purple", size = 3,
                              title = "Test scatter plot")
  expect_false(is.null(plot_result))
})

test_that("jitter_plot function creates a valid plot", {
  test_data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
  plot_result <- jitter_plot(test_data, x = x, y = y, xlab = "x-axis",
                             ylab = "y-axis", colour = "lightgreen",
                             title = "Test jitter plot")
  expect_false(is.null(plot_result))
})

test_that("jitter_plot_shape function creates a valid plot", {
  test_data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
  plot_result <- jitter_plot_shape(test_data, x = x, y = y, xlab = "x-axis",
                                   ylab = "y-axis", shape = "circle",
                                   colour = "orange",
                                   title = "Test jitter plot with shapes")
  expect_false(is.null(plot_result))
})

test_that("line_chart function creates a valid plot", {
  test_data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
  plot_result <- line_chart(test_data, x = x, y = y, xlab = "x-axis",
                            ylab = "y-axis", colour = "blue",
                            title = "Test line chart")
  expect_false(is.null(plot_result))
})
