%4. Size of a directory

function size = sizeofdir(s)
    s = dir;
    size = sum([s.bytes]);
    disp(size);
end