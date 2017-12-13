clear all;
close all;
load('cells.mat');

Time=[0,10,12,14,16,18,20,22];
ndata = length(Time);
NumCellErr = zeros(ndata,1);
NumCell = zeros(ndata,1);
NumCell(1) = 100000;
NumCellErr(1) = 10000;
BData = cells;
BData(BData~=0) = 1;

for itime = 1:ndata-1
    NumCell(itime+1) = sum ( sum ( sum(cells(:,:,:,itime) ) ) );
end


for itime = 2:ndata
    for izslice = 1:length(cells(1,1,:,itime-1))
        BCell = bwboundaries(BData(:,:,izslice,itime-1));
        for iobject = 1:length(BCell)
            for irow = 1:length(BCell{iobject}(:,1))
                NumCellErr(itime) = NumCellErr(itime) + cells( BCell{iobject}(irow,1), BCell{iobject}(irow,2), izslice , itime-1);
            end
        end
    end
end

NumCellErr = 0.5*NumCellErr;
e = errorbar(Time, NumCell, NumCellErr);
e.Marker = 'o';
e.Color = 'b';
e.LineWidth = 3;
e.MarkerSize = 5.0;
hold on;
title('Gompertzian Fit To Rat''s Brain Tumor Growth','fontsize',12);
xlabel('Time [ days ]','fontsize',13);
ylabel('Tumor Cell Count','fontsize',13);
legend('Experimental Data','location', 'northwest');
hold off;

saveas(gcf,'errorbars.png');




