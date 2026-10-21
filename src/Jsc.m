function [Jmean, Jstd] = Jsc(name)

% Import data
AM15 = readmatrix(fullfile(dataDir(), "AM1p5G.csv")); %Power Density of Sunlight
[T0, T1, T2, Tmean] = SResponse(name); %Spectral Response
tables = {T0, T1, T2, Tmean};


for i = 1:1:4
    SR = tables{i};

    % Obtain variables from tables
    lambda_SR = SR(:, 1); % Wavelength values from the SR table
    SR_values = SR(:, 2); % SR values from the SR table
    lambda_AM15 = AM15(:, 1); % Wavelength values from the AM1.5 spectra table
    
    %Interpolate QE values for all AM1.5 wavelengths
    qe_interpolated = interp1(lambda_SR, SR_values, lambda_AM15);
    qe_interpolated(qe_interpolated < 0) = 0;
    qe_interpolated(isnan(qe_interpolated)) = 0; % Replace NaN values with 0
    
    % Multiply the AM1.5 spectra with the QE values
    current_gen = AM15(:, 2) .* qe_interpolated;
    
    % Integrate the product
    wavelength_interval = diff(lambda_AM15); % Calculate the interval between wavelengths
    jsc(1,i) = sum(current_gen(1:end-1) .* wavelength_interval)/10; % Approximate integration using the trapezoidal rule

end
Jset = jsc(1,1:3);
Jmean = jsc(1,4);
Jstd = std(Jset, 0, 2);