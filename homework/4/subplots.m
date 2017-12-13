    %plotting the subplots
    iZslice = 0;
    xpos = 0.08;
    ypos = .9075;

    for irow = 1:4
        xpos = 0.08;
        ypos = ypos - 0.1975;
        for icol = 1:4
            iZslice = iZslice + 1;
            xpos = xpos + .205;
            subPlot = axes();
            subPlot.Position = [xpos ypos .18 .1675];
            imagesc(data(:,:,iZslice));
            title(['z = ',num2str(iZslice)]);
            colormap(parula);
        end
    end