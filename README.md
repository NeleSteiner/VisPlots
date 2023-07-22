`visplots`: Easily Design Plots 
===============================

`visplots` is an R package designed to simplify the process of data visualisation by automating the creation of plots. With just a few lines of code, users can generate visually appealing and insightful graphs for their own datasets without the need to extensive coding knowledge or prior experienxe in data visualisation. 

Key features: 
1. Simple Integration: Visplots provides a straightforward and user-friendly interface, allowing users to effortlessly incorporate their own datasets and produce high-quality plots with ease.
2. Versatile Plot Types: Visplots offers a diverse range of plot types, empowering users to visualise their data in multiple ways. The package infludes the following plot options:
   - Scatter Plot: Discover relationships and patterns between two numerical variables with a scatterplot, ideal for understanding correlations and identifying outliers.
   - Jitter Plot: Uncover the distribution of data points along a single axis, revealing the density and spread of values, particularly useful for smaller datasets.
   - Line Chart: Visualise trends and changes in data over continuous intervals, perfect for time-series data or any dataset with a natural ordering.
3.  Customisable Visuals: Visplots doesn't compromise on customisation options. Users can easily tweak plot colors, size and shape of points as well as labels to create visually striking graphs. With the added feature of choosing different colors, users can now personalise their plots to match their unique preferences.
4.  Compatibility: Visplots is designed to be compatible with various data formats commonly used in R, making it seamless to work with data from different sources.

Please note that the `ggplot2` package is a fundamental part of the `visplots` package, providing the underlying framework for creating plots in R. Read the References to get in-depth information about the `ggplot2` package and its functionalities. 


Installation 
-----------------

You can grab the development version of `visplots` directly from github: 

```
devtools::install_github("NeleSteiner/VisPlots")
```

Requirement 
-----------------

Visplots relies on the ggplot2 package to create visually appealing and highly customizable plots. Therefore, before using Visplots, you must ensure that the `ggplot2` package is installed and loaded in your R environment.

To install `ggplot2`, you can use the following command: 
```
install.packages("ggplot2")
```

To load the `ggplot2`package in your R session, use the `library` function: 
```
library(ggplot2)
```
By meeting this requirement, VisPlots can be used effortlessly.

Reference 
----------------
Wickham H (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York. ISBN 978-3-319-24277-4, https://ggplot2.tidyverse.org.
