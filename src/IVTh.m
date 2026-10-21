function [dataset, variables] = IVTh(name, conc)

% Dataset containing IV curve
name = num2str(name);
conc = num2str(conc);
str = [fullfile(dataDir(), 'Conc. Study') filesep];
str2 = 'C00_SOL.DAT';
fname = [str, conc, 'S', name, str2];
file = fileread(fname);
dataset = table2array(readtable(fname, 'HeaderLines', 30));

% Assuming two arrays, voltage (V) and current (I)
voltage = dataset(:,1);
current = dataset(:,2);

lines = strsplit(file, '\n');
pattern = '([\d.]+)';

% Finding Voc (Open-circuit voltage)
stringInTable = lines(21);
matches = regexp(stringInTable, pattern, 'match');
number = str2double(matches{1});
voc = number(1);

% Finding Jsc (Short-circuit current)
stringInTable = lines(20);
matches = regexp(stringInTable, pattern, 'match');
number = str2double(matches{1});
jsc = number(1);

% Calculating FF (Fill factor)
stringInTable = lines(25);
matches = regexp(stringInTable, pattern, 'match');
number = str2double(matches{1});
ff = number(1);

% Calculating Efficiency
stringInTable = lines(26);
matches = regexp(stringInTable, pattern, 'match');
number = str2double(matches{1});
efficiency = number(1);

variables = [voc, jsc, ff, efficiency];