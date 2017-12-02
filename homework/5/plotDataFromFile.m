function plotDataFromFile()
    close all;
    dataDirectory = dir('C:\git\ICP2017F\homework\5\swift');
    eventCounter = 0;
    figure(); 
    hold on;
    box on;
    
    data = [0,0];
     for i = 1:size(dataDirectory)
         if(dataDirectory(i).bytes > 0)
             data = readtable(['swift/',dataDirectory(i).name]);
             try 
                 myArray = table2array(data);
                 if(all(myArray(:,2) < 0)) 
                     data = [data ; table2array(data)];
                     eventCounter = eventCounter+1;
                 end
             catch
                 disp('missing file encountered. Skipping...');
             end
         end
     end
     
    disp(num2str(eventCounter)); 
    
    scatter(exp(data(:,2)) ...
                    , data(:,1) ...
                    , 1,'red'...
                    ,'filled'...
                    ,'MarkerFaceAlpha',.1...
                    ,'MarkerEdgeAlpha',.1);
   
    xlim([10^-08 10^-02]);
    ylim([1 10^4]);
    
    title('Plot of E{peak} vs. Fluence for 650 Swift GRB events');
    xlabel('Fluence [ergs/cm^2]');
    ylabel('E_{peak}');
    title('Plot of E_{peak} vs Fluence for ',num2str(eventCounter),'Swift GRB events');
    set( gca, 'xscale', 'log', 'yscale', 'log');
    saveas(gcf,'swiftDataPlot.png');

end 
