function output = TableAverage(name)

%Define the file path
name = num2str(name);
str = [fullfile(dataDir(), 'Research', 'Jose', 'I-V') filesep];
str2 = '_sol.dat';

%Iterate data extraction from the 9 tests performed
for index = 0:1:8

    %Obtain data set
    fname = [str, name, '/', name, '-0', num2str(index), str2];
    tableData = readtable(fname, 'Format', 'auto', 'Delimiter', ',');

    %Create a variable for each array of each test from 0 to 8
    tablename = ['T', num2str(index)];
    arrayname = ['A', num2str(index)];
    tableData.Power = tableData.Var1 .* tableData.Var2;
    selectedColumns = [1, 2, 7];
    IVData = tableData(1:191, selectedColumns);

    %Asign value to each variable
    eval([tablename, ' = tableData;']);
    eval([arrayname, ' = IVData;']);

end

IV = mean(cat(3,table2array(A0),table2array(A1),table2array(A2), ...
    table2array(A3),table2array(A4),table2array(A5),table2array(A6), ...
    table2array(A7),table2array(A8)),3);

output = IV;