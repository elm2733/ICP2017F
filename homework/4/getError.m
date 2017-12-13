clear all;
close all;
load('cells.mat');

Time=[0,10,12,14,16,18,20,22];
ndata = length(Time);
BData = cells;
NumCellErr = zeros(ndata,1);
NumCell = zeros(ndata,1);
NumCell(1) = 100000;
NumCellErr(1) = 10000;

BData(BData~=0) = 1;

for itime = 1:ndata-1
    NumCell(itime+1) = sum(sum(sum(cells(:,:,:,itime))));
end


for i = 2:ndata
    for izslice = 1:length(cells(1,1,:,itime-1))
        BCell = bwboundaries(BData(:,:,izslice,itime-1));
        for iobject = 1:length(BCell)
            for irow = 1:length(BCell{iobject}(:,1))
                NumCellErr(itime) = NumCellErr(itime) ...
                                  + cells( BCell{iobject}(irow,1) ...
                                         , BCell{iobject}(irow,2) ...
                                         , izslice , itime-1)
            end
        end
    end
end

errorbar(Time, NumCell, NumCellErr);