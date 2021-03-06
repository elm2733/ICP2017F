function plotDataFromFile()
close all;
figure();
hold on;
box on;
dataDirectory = dir('C:\git\ICP2017F\homework\5\swift');
eventCounter = 0;
data = [0,0];
     for i = 3:size(dataDirectory)
         if(dataDirectory(i).bytes>0)
             dataFromTable = readtable(['swift/',dataDirectory(i).name]);
             try 
                 myArray = table2array(dataFromTable);
                 if(all(myArray(:,2)<0.0)) 
                     data = [data ; table2array(dataFromTable)];
                     eventCounter = eventCounter+1;
                 end
             catch
                 disp('missing file encountered. Skipping...');
             end
         end
     end
    
    scatter(exp(data(:,2)), data(:,1), 1,'red','filled','MarkerFaceAlpha',.1,'MarkerEdgeAlpha',.1);
   
    disp(['Captured ' num2str(eventCounter) ' data files']);
    
    title(['Plot of E{peak} vs Fluence for ' num2str(eventCounter) ' Swift GRB events']);
    
    set(gca,'xscale','log','yscale','log');
    xlabel('Fluence [ergs/cm^2]');
    xlim([1.0000e-08 1.0000e-02]);
    ylabel('E{peak}');
    ylim([1.0000e0 1.0000e04]);
    
    saveas(gcf,'swiftPlot.png');
end 