%3. Cartesian to Polar Coordinates

function result = getPolar(inputCartesianStruct)
    inputCartesianStruct.x = input('Enter an x coordinate: ');
    inputCartesianStruct.y = input('Enter a y coordinate: ');
    
    result.r = sqrt(inputCartesianStruct.x^2 + inputCartesianStruct.y^2);
    result.phi = (180/pi) * (asin(inputCartesianStruct.y/result.r));
    
    disp(result);
    
    return;
    
end