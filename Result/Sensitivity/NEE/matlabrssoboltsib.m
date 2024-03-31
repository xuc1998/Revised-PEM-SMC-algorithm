% This file contains total order Sobol' indices
% with error bars coming from bootstrapping.
% to select the most important ones to display,
% set sortFlag = 1 and set nn to be the number
% of inputs to display.
sortFlag = 1;
nn = 10;
Means = [
  6.6740161963761280e-01
  5.1765845815782119e-01
  1.6059473179039226e-02
  2.3552730131928070e-02
  5.5835395013385681e-03
  5.9153749390998215e-03
  1.8499781226904950e-02
  1.2737718149433554e-02
  3.3723793323129797e-03
  3.8595903335952599e-03
];
Stds = [
  1.1514674467821012e-02
  6.0424307493914843e-03
  6.1891812249610769e-03
  2.1921546296517994e-02
  3.5342419954870080e-03
  4.8440320042136796e-03
  2.9533031508127972e-02
  8.5695801252937322e-03
  2.8864021434086965e-03
  4.2532980898010581e-03
];
  Str = {'P34','P33','P3','P35','P9','P5','P30','P29','P31','P18'};
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
for i=1:10
    errorbar(i,Means(i),Stds(i),'LineWidth',1,'Color',[0 0 0]);
end
set(gca,'linewidth',2)
set(gca,'fontweight','bold')
set(gca,'fontsize',12)
grid on
box on
axis([0  nn+1 ymin ymax])
set(gca,'XTickLabel',Str);
ylim([0 0.7]);
title('Total Order Sobol Indices (with bootstrap)','FontWeight','bold','FontSize',12)
ylabel('Total Order Sobol Index (Normalized)','FontWeight','bold','FontSize',12)
hold off
