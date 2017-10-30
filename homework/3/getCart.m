%3. Polar to Cartesian Coordinates

function result = getCart(inputPolarStruct)
    inputPolarStruct.r = input('Enter an r value: ');
    inputPolarStruct.phi = input('Enter a phi value: ');
    
    result.x = ((inputPolarStruct.r) * (cos(inputPolarStruct.phi*(pi/180))));
    result.y = ((inputPolarStruct.r) * (sin(inputPolarStruct.phi*(pi/180))));
    
    disp(result);
    
    return;
end