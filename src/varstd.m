function [variables, stdeviations] = varstd(name)

%Define the file path
name = num2str(name);
str = [fullfile(dataDir(), 'Research', 'Jose', 'I-V') filesep];
str2 = '_sol.dat';

%Iterate data extraction from the 9 tests performed
for index = 0:1:8
    
    %Obtain data set
    fname = [str, name, '/', name, '-0', num2str(index), str2];
    dataset = fileread(fname);
    
    %Create a variable for each value of each test from 0 to 8
    IName = ['C', num2str(index)];
    VName = ['V', num2str(index)];
    PName = ['P', num2str(index)];
    EName = ['E', num2str(index)];

    % Extract relevant lines
    lines = strsplit(dataset, '\n');

    % Extract the required values from the dataset
    for i = 1:numel(lines)
        line = lines{i};
        
        % Check for specific keywords and extract values
        if contains(line, 'Jsc [mA/cm2]')
            values = str2double(strsplit(line, ','));
            Jsc = values(2:end);
        elseif contains(line, 'Voc [V]')
            values = str2double(strsplit(line, ','));
            Voc = values(2:end);
        elseif contains(line, 'PMax [mW/cm2]')
            values = str2double(strsplit(line, ','));
            Pmax = values(2:end);
        elseif contains(line, 'Efficiency [%]')
            values = str2double(strsplit(line, ','));
            Efficiency = values(2:end);
        end
        
    end
    
    %Filter Voltage in case test range failed
    VoDiff = abs((Voc(1,1) - Voc(1,3))/Voc(1,1));

    if VoDiff < 0.01
        Vo = Voc(1,3);
    else
        Vo = Voc(1,1);
    end
    
    eval([IName, ' = Jsc(1,1);']);
    eval([VName, ' = Vo;']);
    eval([PName, ' = Pmax(1,1);']);
    eval([EName, ' = Efficiency(1,1);']);

end

%Average the value across the 9 tests
Jset = [C0, C1, C2, C3, C4, C5, C6, C7, C8];
Vset = [V0, V1, V2, V3, V4, V5, V6, V7, V8];
Pset = [P0, P1, P2, P3, P4, P5, P6, P7, P8];
Eset = [E0, E1, E2, E3, E4, E5, E6, E7, E8];

%Find each variable's mean
J = mean(Jset);
V = mean(Vset);
P = mean(Pset);
E = mean(Eset);

%Find each variable's standard deviation
Jstd = std(Jset, 0, 2);
Vstd = std(Vset, 0, 2);
Pstd = std(Pset, 0, 2);
Estd = std(Eset, 0, 2);

%Create arrays with output variables
variables = [J, V, P, E];
stdeviations = [Jstd, Vstd, Pstd, Estd];