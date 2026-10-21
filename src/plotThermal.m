function plotThermal

[d15, v15] = IVThermal(15);
[~, v20] = IVThermal(20);
[~, v25] = IVThermal(25);
[~, v30] = IVThermal(30);
[~, v35] = IVThermal(35);
[~, v40] = IVThermal(40);
[~, v45] = IVThermal(45);
[~, v50] = IVThermal(50);
[~, v55] = IVThermal(55);
[~, v60] = IVThermal(60);
[~, v65] = IVThermal(65);
[d70, v70] = IVThermal(70);
SQLim = [31.34397219, 31.48184659, 31.54904888, 31.60834947, 31.73951848, 31.8060727, 31.94097605, 32.00897677, 32.14266884, 32.20808128, 32.34303147, 32.41047397];

% Parameters
names = {'15', '20', '25', '30', '35', '40', '45', '50', '55', '60', '65', '70'};
parameters = {'Voc (V)', 'Jsc (mA/cm2)', 'Fill Factor', 'Efficiency (%)'};
Results = [v15; v20; v25; v30; v35; v40; v45; v50; v55; v60; v65; v70];
tmp = 15:5:70;
voc = [v15(1), v20(1), v25(1), v30(1), v35(1), v40(1), v45(1), v50(1), v55(1), v60(1), v65(1), v70(1)];
jsc = [v15(2), v20(2), v25(2), v30(2), v35(2), v40(2), v45(2), v50(2), v55(2), v60(2), v65(2), v70(2)];
ff = [v15(3), v20(3), v25(3), v30(3), v35(3), v40(3), v45(3), v50(3), v55(3), v60(3), v65(3), v70(3)];
efficiency = [v15(4), v20(4), v25(4), v30(4), v35(4), v40(4), v45(4), v50(4), v55(4), v60(4), v65(4), v70(4)];

% Plotting
figure;
bar(Results);
ylabel('Value');
xlabel('Temperatures (ËC)');
title('Comparison of PV Cell Parameters');
legend(parameters, 'Location', 'Best');
% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility

% Plotting Voc vs. Temperature
figure;
%yyaxis left;
%plot(tmp, voc, 'b-o', 'LineWidth', 2);
%ylabel('Voc (V)');
grid on;
% Adding Jsc vs. Temperature on the same figure with different y-axis
%yyaxis right;
plot(tmp, jsc, 'r-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Jsc (mA/cm2)');
title('Jsc Thermal Dependency');
grid on;
legend('Jsc', 'Location', 'northwest');
% coefficients = polyfit(tmp, voc, 1);
% slope = coefficients(1);
% equation = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$', slope);
% text(45, 0.97, equation, 'FontSize', 18, 'Interpreter', 'latex');
coefficients2 = polyfit(tmp, jsc, 1);
slope2 = coefficients2(1);
equation2 = sprintf('$\\frac{dJsc}{dT}$ = %.5f $\\frac{mA}{^\\circ C}$', slope2);
text(40, 21.5, equation2, 'FontSize', 18, 'Interpreter', 'latex');

% Plotting FF vs. Temperature
figure;
yyaxis left;
plot(tmp, ff, 'b-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Fill Factor (FF)');
title('Fill Factor and Efficiency as Functions of Temperature');
grid on;
% Adding Efficiency vs. Temperature on the same figure with different y-axis
yyaxis right;
plot(tmp, efficiency, 'r-o', 'LineWidth', 2);
ylabel('Efficiency (%)');
legend('Fill Factor', 'Efficiency', 'Location', 'northwest');
grid on;
coefficients = polyfit(tmp, efficiency, 1);
slope = coefficients(1);
equation = sprintf('$\\frac{1}{\\eta}$ $\\frac{d\\eta}{dT}$ = %.2f $\\frac{\\%%}{^\\circ C}$', slope/v25(4)*100);
text(50, 16.25, equation, 'FontSize', 18, 'Interpreter', 'latex');

%% Plot IV Curve for 15ËC and 70ËC
Voc1 = v15(1);   % Open-circuit voltage (V)
Jsc1 = v15(2);   % Short-circuit current (A)
FF1 = v15(3);   % Fill factor
Pmax1 = Voc1 * Jsc1 * FF1;  % Maximum power (W)

Voc2 = v70(1);
Jsc2 = v70(2);
FF2 = v70(3);
Pmax2 = Voc2 * Jsc2 * FF2;

% IV curve data
voltage1 = d15(:,1);
current1 = d15(:,2);
voltage2 = d70(:,1);
current2 = d70(:,2);

% Pmax, Jmax, and Vmax values
Vmax1 = 0.86;        % Voltage at maximum power point (V)
Jmax1 = Pmax1 / Vmax1;         % Maximum current density (A/mÂ²)
Vmax2 = 0.73;
Jmax2 = Pmax2 / Vmax2;

% Plotting the IV curve
figure;
h1 = plot(voltage1, current1, 'r-', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current Density (mA/mÂ²)');
title('Comparison of Performance at High and Low Temperature');
grid on;
hold on;
h2 = plot(voltage2, current2, 'b-', 'LineWidth', 2);

% Shade the area from V = 0 to Voc and J = 0 to Jsc
fill([0 Vmax1 Vmax1 0], [0 0 Jmax1 Jmax1], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

% Shade the area from V = 0 to Vmax and J = 0 to Jmax
fill([0 Vmax2 Vmax2 0], [0 0 Jmax2 Jmax2], 'b', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
xlim([0 1.1]);
ylim([0 22.5]);

% Display Pmax value
text(Vmax1+0.01, Jmax1-0.30, ['EFF @ 15ËC= ' sprintf('%.1f', Pmax1) ' %'], 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'FontSize', 12, 'FontWeight', 'bold');
text(Vmax2, Jmax2+0.30, ['EFF @ 70ËC= ' sprintf('%.1f', Pmax2) ' %'], 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'FontSize', 12, 'FontWeight', 'bold');
text(Vmax1+0.01, Jmax1-0.8, ['Fill Factor @ 15ËC= ' sprintf('%.2f', FF1)], 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'FontSize', 12, 'FontWeight', 'bold');
text(Vmax2, Jmax2-0.15, ['Fill Factor @ 70ËC= ' sprintf('%.2f', FF2)], 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'FontSize', 12, 'FontWeight', 'bold');

% Add marker for Voc and Jsc
line([Voc1 Voc1], ylim, 'Color', 'k', 'LineStyle', '-');
line(xlim, [Jsc1 Jsc1], 'Color', 'k', 'LineStyle', '-');
line([Voc2 Voc2], ylim, 'Color', 'k', 'LineStyle', '--');
line(xlim, [Jsc2 Jsc2], 'Color', 'k', 'LineStyle', '--');
text(Voc1, 0, 'Voc @15ËC', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(Voc2, 0, 'Voc @70ËC', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(0, Jsc1, 'Jsc @15ËC', 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'right');
text(0, Jsc2, 'Jsc @70ËC', 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'right');

legend([h1, h2], '2369 @ 15ËC', '2369 @ 70ËC', 'location', 'sw');
hold off;

%Obtain GaAs Bandgap for Temperature dependence
Ego = 1.521;
S = 3.00;
hw = 0.0267;
k = 8.617333 * 10 ^ (-5);
T = 273.15 + tmp;
Eg = Ego - S * hw * (coth(hw ./ (2 * k * T)) - 1);
Eg2 = 1.522 - 0.00058 * T.^2 ./ (T + 300); %Varshni Equation
Eg3 = 1.519 - 0.00054 * T.^2 ./ (T + 204);
filename = fullfile(fileparts(mfilename('fullpath')), '..', 'results', 'gaas_bandgap_vs_temperature.csv');
GaAsBG = [transpose(T), transpose(Eg)];
writematrix(GaAsBG, filename);

figure;
figure;
plot(T, Eg, 'r-', 'LineWidth', 2);
xlabel('Temperature (ËK)');
ylabel('Band Gap (eV)');
title('Temperature dependence of GaAs band gap');
grid on;
hold on;
%plot(T, Eg2, 'b-', 'LineWidth', 2); %Plotting Varshni Equation
%plot(T, Eg3, 'b-', 'LineWidth', 2); %Plotting Varshni Equation
% Adding markers and text annotations
markers = {'o', 's', 'd', 'v', '^', 'p', 'h'}; % List of marker styles
for i = 1:numel(T)
    marker_index = mod(i, numel(markers)) + 1; % To cycle through the markers
    plot(T(i), Eg(i), markers{marker_index}, 'MarkerSize', 8, 'MarkerFaceColor', 'w', 'LineWidth', 1.5);
    text(T(i), Eg(i), sprintf('(%.2f, %.4f)', T(i), Eg(i)), 'FontSize', 10, 'VerticalAlignment', 'bottom');
end
coefficients3 = polyfit(tmp, Eg, 1);
slope3 = coefficients3(1);
equation3 = sprintf('$\\frac{dEg}{dT}$ = %.5f $\\frac{eV}{^\\circ C}$', slope3);
text(295, 1.42, equation3, 'FontSize', 18, 'Interpreter', 'latex');