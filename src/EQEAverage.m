function output = EQEAverage(name)

%Define the file path
name = num2str(name);
str = [fullfile(dataDir(), 'Research', 'Jose', 'EQE') filesep];
str2 = '_00_mes.dat';

%Iterate data extraction from the 3 tests performed
for index = 0:1:2

    %Obtain data set
    fname = [str, name, '/', name, '-0', num2str(index), str2];
    tableData = readtable(fname, 'HeaderLines', 23);

    %Create a variable for each array of each test from 0 to 2
    tablename = ['T', num2str(index)];
    selectedColumns = [1, 2];
    Data = tableData(:, selectedColumns);

    %Asign value to each variable
    eval([tablename, ' = Data;']);

end

Response = mean(cat(3,table2array(T0),table2array(T1),table2array(T2)),3);
lambda = Response(:,1);
SR = Response(:,2);
QE = 1239.8 .* SR ./ lambda;
EQE = [lambda, QE];

output = EQE;