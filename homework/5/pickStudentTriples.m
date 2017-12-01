%1. student triples

rng(131313);
nstudents = 99;
Triple = randperm(nstudents);
fileID = fopen('students.csv');
StudentData = readtable('students.csv');
StudentTriple = cell(33,3);

row = 1;
col = 1;
for i = 1:99
    StudentTriple{row,col} =  cell2mat(StudentData{Triple(i),2});
      if(row == 33)
        row = 1;
        col = col + 1;
      else
        row = row + 1;
      end
end

fclose(fileID);

xlswrite('nameTriples.xlsx',StudentTriple);