# Publication ready plot

`publication_ready_plot` is a MATLAB function for creating publication-ready plots. It sets the font size and type, adds a title and labels, includes a legend, and saves the plot in EPS and PNG formats.

## Usage

```matlab
publication_ready_plot(x1, y, x2, z, x_label, y_label, title_str, legend1, legend2, file_name)
```

## Input Arguments

- `x1`: a vector of x-values for the first data series
- `y`: a vector of y-values for the first data series
- `x2`: a vector of x-values for the second data series
- `z`: a vector of y-values for the second data series
- `x_label`: a string specifying the x-axis label
- `y_label`: a string specifying the y-axis label
- `title_str`: a string specifying the plot title
- `legend1`: a string specifying the label for the first data series in the legend
- `legend2`: a string specifying the label for the second data series in the legend
- `file_name`: a string specifying the file name for the saved plot

## Output

- A publication-ready plot saved in EPS and PNG formats.

## Example

```matlab
% Generate example data
x1 = linspace(0, 10, 100);
y = sin(x1);
x2 = linspace(0, 10, 50);
z = cos(x2);

% Call the function
publication_ready_plot(x1, y, x2, z, 'X Label', 'Y Label', 'Example Plot', 'sin(x)', 'cos(x)', 'example_plot.eps');
```

## Customization

The function includes several parameters that can be customized to suit your needs:

- `set(groot, 'defaultAxesFontName', 'Times New Roman')` sets the font to Times New Roman.
- `set(groot, 'defaultAxesFontSize', 12)` sets the font size to 12.
- `plot(x1, y, 'LineWidth', 1.5)` sets the line width for the first data series to 1.5.
- `plot(x2, z, '--', 'LineWidth', 1.5)` sets the line style to dashed and the line width for the second data series to 1.5.
- `legend(legend1, legend2, 'Location', 'northwest')` sets the legend location to the northwest corner of the plot.
- `grid on` turns on the grid.
- `grid minor` turns on the minor grid.

These parameters can be modified within the function code.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.


