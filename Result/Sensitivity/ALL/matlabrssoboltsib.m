% This file contains total order Sobol' indices
% with error bars coming from bootstrapping.
% to select the most important ones to display,
% set sortFlag = 1 and set nn to be the number
% of inputs to display.
sortFlag = 1;
nn = 10;
Means = [
  6.2758198152879019e-01
  6.1577741533928154e-01
  4.1410828971994065e-02
  8.9004585419339265e-03
  6.6924032616478127e-02
  9.5876378733124962e-02
  9.6282149081302199e-02
  5.2154481362928093e-02
  9.3992647050664489e-03
  3.0476623743664758e-03
];
Stds = [
  4.7737132812062426e-02
  1.0386891834656098e-02
  3.6529305366569745e-02
  2.0883572178540540e-02
  8.8688057847148907e-03
  1.9221648804360231e-02
  1.8599942861472363e-02
  1.4648384050139918e-02
  1.1356691458500167e-02
  2.2825008960825829e-03
];
  Str = {'P34','P33','P3','P40','P5','P9','P35','P37','P29','P6'};
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
