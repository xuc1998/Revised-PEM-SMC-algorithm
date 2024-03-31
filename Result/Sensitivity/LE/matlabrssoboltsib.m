% This file contains total order Sobol' indices
% with error bars coming from bootstrapping.
% to select the most important ones to display,
% set sortFlag = 1 and set nn to be the number
% of inputs to display.
sortFlag = 1;
nn = 10;
Means = [
  7.1751731936593888e-01
  1.9251841178353488e-01
  1.3345671993453118e-01
  1.2893009126930791e-01
  3.8861452802762646e-02
  2.4833335112120679e-02
  1.1374687611801056e-01
  2.0384724738166667e-02
  7.7192871673373523e-03
  2.1648230381817114e-02
];
Stds = [
  1.1349761414214996e-02
  1.1188738814439662e-02
  8.4893801578020192e-03
  9.3982939158010117e-03
  1.0333317274522051e-02
  1.1504091654828404e-02
  4.8491359703740789e-03
  2.0245515070077421e-03
  4.0752181982160671e-03
  2.1581574731742204e-02
];
  Str = {'P34','P33','P35','P8','P3','P7','P36','P18','P13','P32'};
hold off
if (sortFlag == 1)
  [Means, I2] = sort(Means,'descend');
  Stds = Stds(I2);
  I2 = I2(1:nn);
  Means = Means(1:nn);
  Stds = Stds(1:nn);
  Str  = Str(I2);
end
ymin = min(Means-Stds);
if ymin < 0 
    ymin = 0;
end;
ymax = max(Means+Stds);
h2 = 0.05 * (ymax - ymin);
bar(Means,0.8);hold on;
for i=1:size(Stds,1)
    errorbar(i,Means(i),Stds(i),'LineWidth',1,'Color',[0 0 0]);
end
set(gca,'linewidth',2)
set(gca,'fontweight','bold')
set(gca,'fontsize',12)
grid on
box on
axis([0  nn+1 ymin ymax])
set(gca,'XTickLabel',Str);
ylim([0 0.8]);
title('Total Order Sobol Indices (with bootstrap)','FontWeight','bold','FontSize',12)
ylabel('Total Order Sobol Index (Normalized)','FontWeight','bold','FontSize',12)
hold off
