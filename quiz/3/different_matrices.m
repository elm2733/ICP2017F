function different_matrices([A],[B])
    A = [1,2,3;4,5,6];
    B = [6,5,4;3,2,1];
    C = A * B;
    D = A .* B;
    disp(C);
    disp(D);
end