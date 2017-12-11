%1. subplots in MATLAB
clear all;
close all;
load('data3D.mat');

nrow = round(sqrt(length(data(1,1,:)))); 
ncol = nrow;

figHandle = figure(); 
figHandle.Position = [0, 0, 900, 1350]; 
figHandle.Visible = 'on'; 
figHandle.Color = [0.9400    0.9400    0.9400]; 

% main plot specifications
ax1MarginTop = 0.06; % top margin of the main axes in figure
ax1MarginBottom = 0.12; % bottom margin of the main axes in figure
ax1MarginLeft = 0.08; % bottom margin of the main axes in figure
ax1MarginRight = 0.1; % right margin of the main axes in figure
ax1PositionX = 0.05; % the x coordinate of the bottom left corner of the main axes in figure
ax1PositionY = 0.08; % the y coordinate of the bottom left corner of the main axes in figure
ax1Width = 1 - ax1MarginRight - ax1PositionX; % the width of the main axes in figure
ax1Height = 1 - ax1MarginTop - ax1PositionY; % the height of the main axes in figure
ax1TitleFontSize = 12;
ax1AxisFontSize = 12;

ax1 = axes(); % create a set of axes in this figure. This main axes is needed in order to add the x and y labels and the color bar for the entire figure.
ax1.Color = 'none'; % set color to none
ax1.Position = [ ax1PositionX ax1PositionY ax1Width ax1Height ]; % set position of the axes
ax1.XLim = [0 1]; % set X axis limits
ax1.YLim = [0 1]; % set Y axis limits
ax1.XLabel.String = 'Voxel Number in X Direction'; 
ax1.YLabel.String = 'Voxel Number in Y Direction'; 
ax1.XTick = []; 
ax1.YTick = []; 
ax1.XAxis.Visible = 'off'; % hide the x-axis line, because we only want to keep the x-axis label
ax1.YAxis.Visible = 'off'; % hide the y-axis line, because we only want to keep the y-axis label
ax1.XLabel.Visible = 'on'; % make the x-axis label visible, while the x-axis line itself, has been turned off;
ax1.YLabel.Visible = 'on'; % make the y-axis label visible, while the y-axis line itself, has been turned off;
ax1.Title.String = ['A beautiful design of ',sprintf('%0.1f',nrow),' x ',sprintf('%0.1f',ncol),' subplots using MATLAB']; % set the title of the figure
ax1.FontSize = 11; % set the main plot font size
ax1.XLabel.FontSize = ax1AxisFontSize; % set the font size for the x-axis in mainPlot
ax1.YLabel.FontSize = ax1AxisFontSize; % set the font size for the y-axis in mainPlot
ax1.Title.FontSize = ax1TitleFontSize; % set the font size for the title in mainPlot

    colorbarPositionX = 1 - ax1MarginRight; % the x-position of the color bar
    colorbarPositionY = ax1MarginBottom; % the y-position of the color bar
    colorbarWidth = 0.03; % the width of the color bar
    colorbarHeight = 1 - 2*colorbarPositionY; % the height of the color bar
    colorbarFontSize = 13; % the font size of the color bar
    colorLimits = [0,max(max(max(data(:,:,:))))]; % the color bar limits, the dataset contains numbers between 0 and some large number.

    axes(ax1); % focus on the mainPlot axes, because this is where we want to add the colorbar
    caxis(colorLimits); % set the colorbar limits
    cbar = colorbar; % create the color bar!
    ylabel(cbar,'Number of Tumor Cells'); % now add the color bar label to it
    cbar.Position = [ colorbarPositionX ... Now reset the position for the colorbar, to bring it to the rightmost part of the plot
                      colorbarPositionY ...
                      colorbarWidth ...
                      colorbarHeight ...
                    ];
    cbar.FontSize = colorbarFontSize; 
    
    hold on;
    for i = 1:16 
      if(i<5)
        axes('Position',[0.08+(i-1)*0.205 0.71 0.18 0.1675]);
      elseif(i<9)
        axes('Position',[0.08+(i-5)*0.205 0.5125 0.18 0.1675]);
      elseif(i<13)
        axes('Position',[0.08+(i-9)*0.205 0.315 0.18 0.1675]);
      else
        axes('Position',[0.08+(i-13)*0.205 0.1175 0.18 0.1675]);
      end
      
      zslice = data (:,:,i);
      imagesc(zslice);
        
      if (i == 13)
        set(gca, 'XTick', [20 40 60], 'YTick', [10 20 30 40]);
      elseif (i == 14 || i == 15 || i == 16)
        set(gca, 'XTick', [20 40 60],'YTick', [] );
      elseif (i == 1 || i == 5 || i == 9 || i == 13)
        set(gca, 'XTick', [], 'YTick', [10 20 30 40]);
      else
        set(gca, 'XTick', [], 'YTick', []);
      end
        
        title(['z = ' num2str(i)]);
        caxis([0 3.5*10^4]);
        hold on;
    end

saveas(gcf,'currentPlot.png');

    %plotting the subplots
    %iZslice = 0;
   % xpos = 0;
    %ypos = .95;

    %for irow = 1:4
     %   xpos = 0;
      %  ypos = ypos - 0.19;
       % for icol = 1:4
        %    iZslice = iZslice + 1;
         %   xpos = xpos + .17;
          %  subPlot = axes();
           % subPlot.Position = [xpos ypos .125 .125];
            %imagesc(data(:,:,iZslice));
            %title(['z = ',num2str(iZslice)]);
            %colormap(parula);
        %end
    %end
        








