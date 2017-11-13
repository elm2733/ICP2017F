%1. (c) convertTempVec

function changeTemp = convertTempVec(InVec,string)
    vecLength = length(InVec);
    changeTemp = zeros(1,vecLength);
    
    if (strcmp(string,'F2C') == true)
         idx = 1:vecLength;
            changeTemp(1,idx) = ((5.0/9.0) * (InVec(1,idx)))-32;
    elseif (strcmp(string,'C2F') == true)
         idx = 1:vecLength;
            changeTemp(1,idx) = ((9.0/5.0) * (InVec(1,idx)))+32;
    elseif ((strcmp(string,'F2C') && strcmp(string,'C2F')) == false)
        disp('Please enter either F2C or C2F');
    end
end