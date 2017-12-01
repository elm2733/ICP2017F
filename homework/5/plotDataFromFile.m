%2. (C) plotDataFromFile
close all;
dataDirectory = './swift/';
triggerListDirectory = './';
triggerList = fileread([triggerListDirectory,'triggers.txt']);
triggerList = strsplit(triggerList,'\r\n');
missingFileCounter = 0;

eventCounter = 0;
figure(); hold on; box on;
for i = 1:length(triggerList)
    filename = ['GRB',triggerList{i},'_ep_flu.txt'];
    dataFile = [dataDirectory,filename];
    if exist(dataFile,'file')
        eventCounter = eventCounter + 1;
        disp(['Reading data for the event number ',num2str(i)]);
        data = readtable(dataFile);
        data = table2array(data);
        scatter( exp(data(:,2)) ...
            , data(:,1) ...
            , '.' ...
            , 'markersize',1 ...
            , 'color', 'red' ...
            )
    else 
        disp('missing file encountered. Skipping...');
    end
end
xlabel('Fluence [ergs/cm^2]');
ylabel('E_{peak}');
title('Plot of E_{peak} vs Fluence for ',num2str(eventCounter),'Swift GRB events');
set( gca, 'xscale', 'log', 'yscale', 'log');

saveas(gcf,'swiftDataPlot.png');