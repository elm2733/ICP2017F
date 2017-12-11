load('cells.mat');

colormap(parula);
for t=10:2:22
    h=figure;
    for z=1:16
        if z==3
            title(['                                Time = ' num2str(t) ' days. Brain MRI slices along Z-direction, Rat W09. No radiation treatment'],'FontSize',8);
        elseif z==10
            ylabel('Voxels in the Y-Direction');
        end
        subplot(4,4,z);
        array=cells(:,:,z,(t-10)/2+1);
        imagesc(array,[0 4*10^4]);
        set(gca,'Ydir','reverse');
        xlabel(['Z = ' num2str(z)]);
        if z==14
            xlabel({['Z = ' num2str(z)],'Voxels in the X-Direction'});
        end
    end
    hp4=get(subplot(4,4,16),'Position');
    a=colorbar('Position',[hp4(1)+hp4(3)+.01 hp4(2) .05 hp4(2)+hp4(3)*4.5]);
    caxis([0 4*10^4]);
    ylabel(a,'Tumor Count per Voxel');
    saveas(h,['C:\Users\atros27\Documents\MATLAB\final\results\time' num2str(t) 'graph.fig']);
end