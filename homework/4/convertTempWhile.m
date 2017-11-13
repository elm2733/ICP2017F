%1. (b) convertTempWhile

function changeTemp = convertTempWhile(InVec,string)
    vecLength = length(InVec);
    changeTemp = zeros(1,vecLength);
    
    if (strcmp(string,'F2C') == true)
        index = 1;
        while (index <= vecLength)
            changeTemp(1,index) = ((5.0/9.0) * (InVec(1,index)))-32;
            index = index + 1;
        end
    elseif (strcmp(string,'C2F') == true)
        index = 1;
        while (index <= vecLength)
            changeTemp(1,index) = ((9.0/5.0) * (InVec(1,index)))+32;
            index = index + 1;
        end
    elseif ((strcmp(string,'F2C') && strcmp(string,'C2F')) == false)
        disp('Please enter either F2C or C2F');
    end
end