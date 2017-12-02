%1. student triples

rng(131313);
nstudents = 99;
StudentData = readtable('students.csv');

Triple = randperm(nstudents);

StudentTriple = cell(3,nstudents/3);
for i = 1:33
    StudentTriple(:,i) = [ StudentData.Student(Triple(i)) ...
                           , StudentData.Student(Triple(nstudents/3+i)) ...
                           , StudentData.Student(Triple(2*nstudents/3+i)) ...
                         ];
end
        
xlswrite('nameTriples.xlsx',StudentTriple);