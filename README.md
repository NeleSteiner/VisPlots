`visplots`: Easily Design Plots 
===============================

`visplots` is an R package designed to simplify the process of data
visualisation by automating the creation of plots. With just a few lines of code
users can generate visually appealing and insightful graphs for their own
datasets without the need to extensive coding knowledge or prior experience
in data visualisation.

Key features:
1. Simple Integration: `visplots` provides a straightforward and user-friendly
interface, allowing users to effortlessly incorporate their own datasets and
produce high-quality plots with ease.
2. Versatile Plot Types: `visplots` offers a diverse range of plot types,
empowering users to visualise their data in multiple ways. The package includes
the following plot options:
   - Scatter Plot: Discover relationships and patterns between two numerical
   variables with a scatter plot, ideal for understanding correlations and
   identifying outliers.
   - Jitter Plot: Uncover the distribution of data points along a single axis,
   revealing the density and spread of values, particularly useful for smaller
   datasets.
   - Line Chart: Visualise trends and changes in data over continuous intervals,
   perfect for time-series data or any dataset with a natural ordering.
   - Box Plot: The box plot is a powerful data visualisation tool used to
   examine the distribution of data, identify potential outliers, and understand
   the variability among different categories or groups
3.  Customisable Visuals: `visplots` doesn't compromise on customisation
options. Users can easily tweak plot colors, size and shape of points as well as
labels to create visually striking graphs. With the added feature of choosing
different colors, users can now personalise their plots to match their unique
preferences.
4.  Compatibility: `visplots` is designed to be compatible with various data
formats commonly used in R, making it seamless to work with data from different
sources.

Please note that the `ggplot2` package is a fundamental part of the `visplots`
package, providing the underlying framework for creating plots in R. Read the
References to get in-depth information about `ggplot2` and its functionalities. 


Installation 
-----------------

You can grab the development version of `visplots` directly from GitHub: 

```
devtools::install_github("NeleSteiner/VisPlots")
```

To load the `visplots` package in your R session, use the `library` function: 
```
library(visplots)
```

`visplots` relies on the `ggplot2` package to create visually appealing and
highly customisable plots. Therefore before using `visplots` you must ensure
that `ggplot2` is installed and loaded in your R environment.

To install the `ggplot2` package, you can use the following command: 
```
install.packages("ggplot2")
```

To load `ggplot2` in your R session, use the `library` function: 
```
library(ggplot2)
```

By meeting this requirement `visplots` can be used effortlessly.

Reference 
----------------
Wickham H (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
New York. ISBN 978-3-319-24277-4, https://ggplot2.tidyverse.org.
