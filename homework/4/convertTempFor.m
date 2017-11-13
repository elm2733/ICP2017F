%1.(a) convertTempFor

function changeTemp = convertTempFor(InVec,string)
    vecLength = length(InVec);
    changeTemp = zeros(1,vecLength);
    
    if (strcmp(string,'F2C') == true)
        for index = 1:vecLength
            changeTemp(1,index) = ((5.0/9.0) * (InVec(1,index)))-32;
        end
    elseif (strcmp(string,'C2F') == true)
        for index = 1:vecLength
            changeTemp(1,index) = ((9.0/5.0) * (InVec(1,index)))+32;
        end
    elseif ((strcmp(string,'F2C') && strcmp(string,'C2F')) == false)
        disp('Please enter either F2C or C2F');
    end
end
        

