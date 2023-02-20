function publication_ready_plot_1(x, y, x_label, y_label, title_str, legend_str, file_name)

% Set font size and type
set(groot, 'defaultAxesFontName', 'Times New Roman');
set(groot, 'defaultAxesFontSize', 12);

% Create figure
fig = figure;
set(fig, 'Position', [100, 100, 800, 600]);

% Set default line colors
colors = lines(length(y));

% Plot data
for i = 1:length(y)
    plot(x{i}, y{i}, 'LineWidth', 1.5, 'Color', colors(i,:));
    hold on;
end
hold off;

% Add title and labels
title(title_str, 'FontWeight', 'bold', 'FontSize', 16);
xlabel(x_label, 'FontWeight', 'bold', 'FontSize', 14);
ylabel(y_label, 'FontWeight', 'bold', 'FontSize', 14);

% Add legend
legend(legend_str, 'Location', 'northwest');

% Set grid and minor grid
grid on;
grid minor;

% Save figure as EPS and PNG files
print(fig, file_name, '-depsc');
print(fig, strrep(file_name, '.eps', '.png'), '-dpng', '-r300');

end
