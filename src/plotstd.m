function plotstd()

[v1972, std1972] = varstd(1972);
[v2299, std2299] = varstd(2299);
[v2350, std2350] = varstd(2350);
[v2369, std2369] = varstd(2369);
[v2529, std2529] = varstd(2529);
[v2530, std2530] = varstd(2530);
[v2531, std2531] = varstd(2531);

Current = [v1972(1,1), v2299(1,1), v2350(1,1), v2369(1,1), v2529(1,1), v2530(1,1), v2531(1,1)];
stdJ = [std1972(1,1), std2299(1,1), std2350(1,1), std2369(1,1), std2529(1,1), std2530(1,1), std2531(1,1)];
Voltage = [v1972(1,2), v2299(1,2), v2350(1,2), v2369(1,2), v2529(1,2), v2530(1,2), v2531(1,2)];
stdV = [std1972(1,2), std2299(1,2), std2350(1,2), std2369(1,2), std2529(1,2), std2530(1,2), std2531(1,2)];
Pmax = [v1972(1,3), v2299(1,3), v2350(1,3), v2369(1,3), v2529(1,3), v2530(1,3), v2531(1,3)];
stdP = [std1972(1,3), std2299(1,3), std2350(1,3), std2369(1,3), std2529(1,3), std2530(1,3), std2531(1,3)];
Efficiency = [v1972(1,4), v2299(1,4), v2350(1,4), v2369(1,4), v2529(1,4), v2530(1,4), v2531(1,4)];
stdE = [std1972(1,4), std2299(1,4), std2350(1,4), std2369(1,4), std2529(1,4), std2530(1,4), std2531(1,4)];
names = {'1972', '2299', '2350', '2369', '2529', '2530', '2531'};
x = 1:7;

% Plotting
figure;
bar(x, Current);
ylabel('Jsc (mA/cm2)');
xlabel('PV Cell');
title('Comparison of PV Cell Current');
hold on
errorbar(x, Current, stdJ, 'o', 'LineWidth', 2);
ylim([18, 21.5]);

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility
set(gca, 'FontSize', 18);  % Font size of axis labels and tick labels
set(gca, 'TitleFontSizeMultiplier', 1.5);  % Increase title font size
hold off

% Plotting
figure;
bar(x, Voltage);
ylabel('Voc (V)');
xlabel('PV Cell');
title('Comparison of PV Cell Voltage');
hold on
errorbar(x, Voltage, stdV, 'o', 'LineWidth', 2);
ylim([0.9, 1.05]);

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility
set(gca, 'FontSize', 18);  % Font size of axis labels and tick labels
set(gca, 'TitleFontSizeMultiplier', 1.5);  % Increase title font size
hold off

% Plotting
figure;
bar(x, Pmax);
ylabel('Maximum Power (mW/cm2)');
xlabel('PV Cell');
title('Comparison of PV Cell Power');
hold on
errorbar(x, Pmax, stdP, 'o', 'LineWidth', 2);
ylim([10, 18]);

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility
set(gca, 'FontSize', 18);  % Font size of axis labels and tick labels
set(gca, 'TitleFontSizeMultiplier', 1.5);  % Increase title font size
hold off

% Plotting
figure;
bar(x, Efficiency);
ylabel('Efficiency (%)');
xlabel('PV Cell');
title('Comparison of PV Cell Efficiency');
hold on
errorbar(x, Efficiency, stdE, 'o', 'LineWidth', 2);
ylim([10, 18]);

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility
set(gca, 'FontSize', 18);  % Font size of axis labels and tick labels
set(gca, 'TitleFontSizeMultiplier', 1.5);  % Increase title font size
hold off