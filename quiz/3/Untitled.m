function result = getTriangleArea(vertices)
    vertex 1: (x1,y1)
    vertex 2: (x2,y2)
    vertex 3: (x3,y3)
    inputCell = cell(3,1);
    inputCell;
    result = 0.5 * abs(x2*y2 - x1*y3 + x3*y1 + x1*y2 - x2*y1);
end