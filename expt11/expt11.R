# 3D Scattered plot

#using scatterplot3d library
library(scatterplot3d)
set.seed(123)
x <- rnorm(50)
y <- rnorm(50)
z <- rnorm(50)
scatterplot3d(x, y, z, pch = 16, color = "blue", main = "3D Scatter Plot")      # 3D scatter plot

#using plotly library
library(plotly)
set.seed(123)
x <- rnorm(50)
y <- rnorm(50)
z <- rnorm(50)
plot_ly(x = ~x, y = ~y, z = ~z, type = "scatter3d", mode = "markers",           # 3D scatter plot using plotly
        marker = list(size = 4, color = "blue")) %>%
  layout(title = "Interactive 3D Scatter Plot")
