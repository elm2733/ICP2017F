%2. robustWebRead

function robustWebRead()
    str = input('s');
    data = webread('str');

    if(exist('data')~=0)
        imshow(data);
    else
        warning('The requested web address does not exist! Gracefully exiting...');
    end
end