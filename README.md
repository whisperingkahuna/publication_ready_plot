# Publication ready plot

MATLAB provides a wide range of plotting functions. However, creating publication-quality plots can be a daunting task. This function `publication_ready_plot` generates publication-ready plots with customizable titles, labels, and legends.

This version of the function is modified to handle multiple time series, with default settings for single time series.

## Usage

```matlab
function publication_ready_plot(x, y, x_label, y_label, title_str, legend_str, file_name)
```

## Input Arguments

- `x`: Required input for the x-axis values for all time-series as a cell array.
- `y`: Required input for the y-axis values for all time-series as a cell array.
- `x_label`: Required input for the label for x-axis.
- `y_label`: Required input for the label for y-axis.
- `title_str`: Required input for the title of the plot.
- `legend_str`: Required input for the legend for all time-series as a cell array.
- `file_name`: Required input for the file name to save the plot. The file will be saved in the current directory.

## Output

- A publication-ready plot saved in EPS and PNG formats.

## Example

```matlab
% Generate example data
t = linspace(0, 2*pi, 100);
y1 = sin(t);
y2 = cos(t);
y3 = sin(2*t);

% Call function with multiple time series
x = {t, t, t};
y = {y1, y2, y3};
publication_ready_plot(x, y, 'Time (s)', 'Amplitude', 'Example Plot', {'Series 1', 'Series 2', 'Series 3'}, 'example_plot');
```

## Customization

The function includes several parameters that can be customized to suit your needs:

- `set(groot, 'defaultAxesFontName', 'Times New Roman')` sets the font to Times New Roman.
- `set(groot, 'defaultAxesFontSize', 12)` sets the font size to 12.
- `plot(x{i}, y{i}, 'LineWidth', 1.5)`  sets the line width for the data series to 1.5.
- `legend(legend_str, 'Location', 'best')`  sets the legend location to the best position based on the available space.
- `grid on` turns on the grid.
- `grid minor` turns on the minor grid.

These parameters can be modified within the function code.




