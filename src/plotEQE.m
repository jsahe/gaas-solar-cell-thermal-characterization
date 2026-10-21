function plotEQE()

EQE_1972 = EQEAverage(1972);
EQE_2299 = EQEAverage(2299);
EQE_2350 = EQEAverage(2350);
EQE_2369 = EQEAverage(2369);
EQE_2529 = EQEAverage(2529);
EQE_2530 = EQEAverage(2530);
EQE_2531 = EQEAverage(2531);

[v1972, ~] = varstd(1972);
[v2299, ~] = varstd(2299);
[v2350, ~] = varstd(2350);
[v2369, ~] = varstd(2369);
[v2529, ~] = varstd(2529);
[v2530, ~] = varstd(2530);
[v2531, ~] = varstd(2531);
Jsc_IV = [v1972(1,1), v2299(1,1), v2350(1,1), v2369(1,1), v2529(1,1), v2530(1,1), v2531(1,1)];
Jsc_SR = plotJsc;
Calibrator = Jsc_IV ./ Jsc_SR;

EQE = Calibrator .* [EQE_1972(:,2), EQE_2299(:,2), EQE_2350(:,2), EQE_2369(:,2), EQE_2529(:,2), EQE_2530(:,2), EQE_2531(:,2)];
lambda = EQE_1972(:,1);
createfigure(lambda, EQE);