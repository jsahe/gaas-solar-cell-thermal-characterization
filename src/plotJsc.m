function Jset = plotJsc()

[v1972, s1972] = Jsc(1972);
[v2299, s2299] = Jsc(2299);
[v2350, s2350] = Jsc(2350);
[v2369, s2369] = Jsc(2369);
[v2529, s2529] = Jsc(2529);
[v2530, s2530] = Jsc(2530);
[v2531, s2531] = Jsc(2531);
Jset = [v1972, v2299, v2350, v2369, v2529, v2530, v2531];
Jstd = [s1972, s2299, s2350, s2369, s2529, s2530, s2531];
names = {'1972', '2299', '2350', '2369', '2529', '2530', '2531'};
x = 1:7;

% Plotting
figure;
bar(x, Jset);
ylabel('Jsc (mA/cm2)');
xlabel('PV Cell');
title('Comparison of PV Cell Current');
hold on
errorbar(x, Jset, Jstd, 'o', 'LineWidth', 2);
ylim([12, 20]);

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility
set(gca, 'FontSize', 18);  % Font size of axis labels and tick labels
set(gca, 'TitleFontSizeMultiplier', 1.5);  % Increase title font size
hold off