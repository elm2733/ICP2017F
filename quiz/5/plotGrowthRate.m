%(1) plotGrowthRate


dataDirectory = './5/';

GrowthRate = importdata('chain.txt');
dataSet = GrowthRate.data;

plot(dataSet(:,4),'color','red');
set(gca,'xscale','log');
xlabel('Sample Number','fontsize',12);
ylabel('Growth Rate','fontsize',12);


hold off;
saveas(gcf,'GrowthRate.png');



