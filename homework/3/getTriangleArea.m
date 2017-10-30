%6. Triangle Area using struct

function [A] = getTriangleArea(vertices)
    vertices.x1=input('x1=');

    vertices.y1=input('y1=');

    vertices.x2=input('x2=');

    vertices.y2=input('y2=');

    vertices.x3=input('x3=');

    vertices.y3=input('y3=');
    
    
    A = 0.5 * abs((vertices.x2 * vertices.y3)-(vertices.x3 * vertices.y2)-(vertices.x1 * vertices.y3)+(vertices.x3 * vertices.y1)+(vertices.x1 * vertices.y2)-(vertices.x2 * vertices.y1));
    
    disp(A);
end