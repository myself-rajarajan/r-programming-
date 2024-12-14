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

# 3. Wireframe Surface Plot using rgl
x_grid <- seq(-2, 2, length.out = 30)
y_grid <- seq(-2, 2, length.out = 30)
z_grid <- outer(x_grid, y_grid, function(x, y) x^2 - y^2)  # Surface equation
open3d()
persp3d(x_grid, y_grid, z_grid, col = "white", aspect = c(1, 1, 0.5), 
        front = "lines", back = "lines", lwd = 0.5, alpha = 1)
grid3d(c("x", "y", "z"))
