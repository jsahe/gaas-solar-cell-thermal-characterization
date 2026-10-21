function plotIV

%Import Average of Tables
PV_1972 = TableAverage(1972);
PV_2299 = TableAverage(2299);
PV_2350 = TableAverage(2350);
PV_2369 = TableAverage(2369);
PV_2529 = TableAverage(2529);
PV_2530 = TableAverage(2530);
PV_2531 = TableAverage(2531);


R_1972 = variables(1972);
R_2299 = variables(2299);
R_2350 = variables(2350);
R_2369 = variables(2369);
R_2529 = variables(2529);
R_2530 = variables(2530);
R_2531 = variables(2531);
Results = [R_1972; R_2299; R_2350; R_2369; R_2529; R_2530; R_2531];

%I-V Variables
V_1972 = PV_1972(:,1);
I_1972 = PV_1972(:,2);
V_2299 = PV_2299(:,1);
I_2299 = PV_2299(:,2);
V_2350 = PV_2350(:,1);
I_2350 = PV_2350(:,2);
V_2369 = PV_2369(:,1);
I_2369 = PV_2369(:,2);
V_2529 = PV_2529(:,1);
I_2529 = PV_2529(:,2);
V_2530 = PV_2530(:,1);
I_2530 = PV_2530(:,2);
V_2531 = PV_2531(:,1);
I_2531 = PV_2531(:,2);

%PV Cell Names
names = {'1972', '2299', '2350', '2369', '2529', '2530', '2531'};

%Plot I-V Curve
figure;
hold on
plot(V_1972, I_1972, 'r');
plot(V_2299, I_2299, 'b');
plot(V_2350, I_2350, 'g');
plot(V_2369, I_2369, 'c');
plot(V_2529, I_2529, 'm');
plot(V_2530, I_2530, 'k');
plot(V_2531, I_2531, 'y');

xlabel('V');
ylabel('I');
title('I-V Curve');
legend(names, 'Location','Best');
hold off

% Parameters
parameters = {'Jsc (mA/cm2)', 'Voc (V)', 'Pmax (mW/cm2)', 'Efficiency (%)'};

% Plotting
figure;
bar(Results);
ylabel('Value');
xlabel('PV Cell');
title('Comparison of PV Cell Parameters');
legend(parameters, 'Location', 'Best');

% Customize x-axis labels
xticklabels(names);
xtickangle(45); % Rotate x-axis labels for better visibility