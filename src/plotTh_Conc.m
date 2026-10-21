function plotTh_Conc

[~, v151] = IVTh(15, 1);
[~, v251] = IVTh(25, 1);
[~, v351] = IVTh(35, 1);
[~, v451] = IVTh(45, 1);
[~, v551] = IVTh(55, 1);
[~, v651] = IVTh(65, 1);
[~, v751] = IVTh(75, 1);

[~, v152] = IVTh(15, 2);
[~, v252] = IVTh(25, 2);
[~, v352] = IVTh(35, 2);
[~, v452] = IVTh(45, 2);
[~, v552] = IVTh(55, 2);
[~, v652] = IVTh(65, 2);
[~, v752] = IVTh(75, 2);

[~, v153] = IVTh(15, 3);
[~, v253] = IVTh(25, 3);
[~, v353] = IVTh(35, 3);
[~, v453] = IVTh(45, 3);
[~, v553] = IVTh(55, 3);
[~, v653] = IVTh(65, 3);
[~, v753] = IVTh(75, 3);

[~, v154] = IVTh(15, 4);
[~, v254] = IVTh(25, 4);
[~, v354] = IVTh(35, 4);
[~, v454] = IVTh(45, 4);
[~, v554] = IVTh(55, 4);
[~, v654] = IVTh(65, 4);
[~, v754] = IVTh(75, 4);

[~, v155] = IVTh(15, 5);
[~, v255] = IVTh(25, 5);
[~, v355] = IVTh(35, 5);
[~, v455] = IVTh(45, 5);
[~, v555] = IVTh(55, 5);
[~, v655] = IVTh(65, 5);
[~, v755] = IVTh(75, 5);

[~, v156] = IVTh(15, 6);
[~, v256] = IVTh(25, 6);
[~, v356] = IVTh(35, 6);
[~, v456] = IVTh(45, 6);
[~, v556] = IVTh(55, 6);
[~, v656] = IVTh(65, 6);
[~, v756] = IVTh(75, 6);

[~, v157] = IVTh(15, 7);
[~, v257] = IVTh(25, 7);
[~, v357] = IVTh(35, 7);
[~, v457] = IVTh(45, 7);
[~, v557] = IVTh(55, 7);
[~, v657] = IVTh(65, 7);
[~, v757] = IVTh(75, 7);

tmp = 15:10:75;
voc1 = [v151(1), v251(1), v351(1), v451(1), v551(1), v651(1), v751(1)];
jsc1 = [v151(2), v251(2), v351(2), v451(2), v551(2), v651(2), v751(2)];
voc2 = [v152(1), v252(1), v352(1), v452(1), v552(1), v652(1), v752(1)];
jsc2 = [v152(2), v252(2), v352(2), v452(2), v552(2), v652(2), v752(2)];
voc3 = [v153(1), v253(1), v353(1), v453(1), v553(1), v653(1), v753(1)];
jsc3 = [v153(2), v253(2), v353(2), v453(2), v553(2), v653(2), v753(2)];
voc4 = [v154(1), v254(1), v354(1), v454(1), v554(1), v654(1), v754(1)];
jsc4 = [v154(2), v254(2), v354(2), v454(2), v554(2), v654(2), v754(2)];
voc5 = [v155(1), v255(1), v355(1), v455(1), v555(1), v655(1), v755(1)];
jsc5 = [v155(2), v255(2), v355(2), v455(2), v555(2), v655(2), v755(2)];
voc6 = [v156(1), v256(1), v356(1), v456(1), v556(1), v656(1), v756(1)];
jsc6 = [v156(2), v256(2), v356(2), v456(2), v556(2), v656(2), v756(2)];
voc7 = [v157(1), v257(1), v357(1), v457(1), v557(1), v657(1), v757(1)];
jsc7 = [v157(2), v257(2), v357(2), v457(2), v557(2), v657(2), v757(2)];

ff1 = [v151(3), v251(3), v351(3), v451(3), v551(3), v651(3), v751(3)];
ff2 = [v152(3), v252(3), v352(3), v452(3), v552(3), v652(3), v752(3)];
ff3 = [v153(3), v253(3), v353(3), v453(3), v553(3), v653(3), v753(3)];
ff4 = [v154(3), v254(3), v354(3), v454(3), v554(3), v654(3), v754(3)];
ff5 = [v155(3), v255(3), v355(3), v455(3), v555(3), v655(3), v755(3)];
ff6 = [v156(3), v256(3), v356(3), v456(3), v556(3), v656(3), v756(3)];
ff7 = [v157(3), v257(3), v357(3), v457(3), v557(3), v657(3), v757(3)];

eff1 = [v151(4), v251(4), v351(4), v451(4), v551(4), v651(4), v751(4)];
eff2 = [v152(4), v252(4), v352(4), v452(4), v552(4), v652(4), v752(4)];
eff3 = [v153(4), v253(4), v353(4), v453(4), v553(4), v653(4), v753(4)];
eff4 = [v154(4), v254(4), v354(4), v454(4), v554(4), v654(4), v754(4)];
eff5 = [v155(4), v255(4), v355(4), v455(4), v555(4), v655(4), v755(4)];
eff6 = [v156(4), v256(4), v356(4), v456(4), v556(4), v656(4), v756(4)];
eff7 = [v157(4), v257(4), v357(4), v457(4), v557(4), v657(4), v757(4)];

JscRT = 21.0416;
p = "#7E2F8E";

% Plotting Voc vs. Temperature
figure;
plot(tmp, voc1, 'b-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Voc (V)');
title('Voc as a Function of Concentration');
grid on;
hold on;
plot(tmp, voc2, 'y-o', 'LineWidth', 2);
plot(tmp, voc3, 'k-o', 'LineWidth', 2);
plot(tmp, voc4, 'b-o', 'LineWidth', 2);
plot(tmp, voc5, 'g-o', 'LineWidth', 2);
plot(tmp, voc6, 'c-o', 'LineWidth', 2);
plot(tmp, voc7, 'r-o', 'LineWidth', 2);
% coefficients1 = polyfit(tmp, voc1, 1);
% slope1 = coefficients1(1);
% equation1 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 15$^\\circ C$', slope1);
% text(12, 1, equation1, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients2 = polyfit(tmp, voc2, 1);
% slope2 = coefficients2(1);
% equation2 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 25$^\\circ C$', slope2);
% text(12, 0.985, equation2, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients3 = polyfit(tmp, voc3, 1);
% slope3 = coefficients3(1);
% equation3 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 35$^\\circ C$', slope3);
% text(12, 0.970, equation3, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients4 = polyfit(tmp, voc4, 1);
% slope4 = coefficients4(1);
% equation4 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 45$^\\circ C$', slope4);
% text(12, 0.955, equation4, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients5 = polyfit(tmp, voc5, 1);
% slope5 = coefficients5(1);
% equation5 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 55$^\\circ C$', slope5);
% text(12, 0.94, equation5, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients6 = polyfit(tmp, voc6, 1);
% slope6 = coefficients6(1);
% equation6 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 65$^\\circ C$', slope6);
% text(12, 0.925, equation6, 'FontSize', 14, 'Interpreter', 'latex');
% coefficients7 = polyfit(tmp, voc7, 1);
% slope7 = coefficients7(1);
% equation7 = sprintf('$\\frac{dVoc}{dT}$ = %.5f $\\frac{V}{^\\circ C}$ at 75$^\\circ C$', slope7);
% text(12, 0.91, equation7, 'FontSize', 14, 'Interpreter', 'latex');
legend('1 Sun', '2 Suns', '3 Suns', '4 Suns', '5 Suns', '6 Suns', '7 Suns');
% Adding Jsc vs. Temperature on the same figure with different y-axis
figure;
plot(tmp, jsc1, 'b-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Jsc (mA/cm2)');
title('Jsc as a Function of Concentration');
%legend('Voc', 'Jsc', 'Location', 'northwest');
grid on;
hold on;
plot(tmp, jsc2, 'y-o', 'LineWidth', 2);
plot(tmp, jsc3, 'k-o', 'LineWidth', 2);
plot(tmp, jsc4, 'b-o', 'LineWidth', 2);
plot(tmp, jsc5, 'g-o', 'LineWidth', 2);
plot(tmp, jsc6, 'c-o', 'LineWidth', 2);
plot(tmp, jsc7, 'r-o', 'LineWidth', 2);
legend('1 Sun', '2 Suns', '3 Suns', '4 Suns', '5 Suns', '6 Suns', '7 Suns');

% Plotting Efficiency vs. Temperature
figure;
plot(tmp, eff1 / v251(2) * JscRT, 'b-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Efficiency (%)');
title('Efficiency as a Function of Concentration');
grid on;
hold on;
plot(tmp, eff2 / v252(2) * JscRT, 'y-o', 'LineWidth', 2);
plot(tmp, eff3 / v253(2) * JscRT, 'k-o', 'LineWidth', 2);
plot(tmp, eff4 / v254(2) * JscRT, 'b-o', 'LineWidth', 2);
plot(tmp, eff5 / v255(2) * JscRT, 'g-o', 'LineWidth', 2);
plot(tmp, eff6 / v256(2) * JscRT, 'c-o', 'LineWidth', 2);
plot(tmp, eff7 / v257(2) * JscRT, 'r-o', 'LineWidth', 2);
legend('1 Sun', '2 Suns', '3 Suns', '4 Suns', '5 Suns', '6 Suns', '7 Suns');

% Plotting Fill Factor vs. Temperature
figure;
plot(tmp, ff1, 'b-o', 'LineWidth', 2);
xlabel('Temperature (\circC)');
ylabel('Fill Factor');
title('Fill Factor as a Function of Concentration');
grid on;
hold on;
plot(tmp, ff2, 'y-o', 'LineWidth', 2);
plot(tmp, ff3, 'k-o', 'LineWidth', 2);
plot(tmp, ff4, 'b-o', 'LineWidth', 2);
plot(tmp, ff5, 'g-o', 'LineWidth', 2);
plot(tmp, ff6, 'c-o', 'LineWidth', 2);
plot(tmp, ff7, 'r-o', 'LineWidth', 2);
legend('1 Sun', '2 Suns', '3 Suns', '4 Suns', '5 Suns', '6 Suns', '7 Suns');

% % Plotting FF vs. Temperature
% figure;
% yyaxis left;
% plot(tmp, ff, 'b-o', 'LineWidth', 2);
% xlabel('Temperature (\circC)');
% ylabel('Fill Factor (FF)');
% title('Fill Factor and Efficiency as Functions of Temperature');
% grid on;
% % Adding Efficiency vs. Temperature on the same figure with different y-axis
% yyaxis right;
% plot(tmp, efficiency, 'r-o', 'LineWidth', 2);
% ylabel('Efficiency (%)');
% legend('Fill Factor', 'Efficiency', 'Location', 'northwest');
% grid on;
% coefficients = polyfit(tmp, efficiency, 1);
% slope = coefficients(1);
% equation = sprintf('$\\frac{1}{\\eta}$ $\\frac{d\\eta}{dT}$ = %.2f $\\frac{\\%%}{^\\circ C}$', slope/v251(4)*100);
% text(50, 16.25, equation, 'FontSize', 14, 'Interpreter', 'latex');