function publication_ready_plot(x1, y,x2, z, x_label, y_label, title_str, legend1,legend2, file_name)

% Set font size and type
set(groot, 'defaultAxesFontName', 'Times New Roman');
set(groot, 'defaultAxesFontSize', 12);

% Create figure
fig = figure;
set(fig, 'Position', [100, 100, 800, 600]);

% Plot data
plot(x1, y, 'LineWidth', 1.5);
hold on
plot(x2, z, '--', 'LineWidth', 1.5);
hold off

% Add title and labels
title(title_str, 'FontWeight', 'bold', 'FontSize', 16);
xlabel(x_label, 'FontWeight', 'bold', 'FontSize', 14);
ylabel(y_label, 'FontWeight', 'bold', 'FontSize', 14);

% Add legend
legend(legend1,legend2, 'Location', 'northwest');

%Set axis limits and ticks
% xlim([min(x1), max(x1)]);
% xticks(linspace(min(x1), max(x1), 5));
% ylim([min(y), max(y)]);
% yticks(linspace(0, 10, 6));

% Set grid and minor grid
grid on;
grid minor;

% Save figure as EPS and PNG files
print(fig, file_name, '-depsc');
print(fig, strrep(file_name, '.eps', '.png'), '-dpng', '-r300');
end