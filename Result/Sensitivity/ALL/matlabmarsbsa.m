% This file contains MarsBag ranking measures
% and also their spreads based on bootstraping.
% To select the most important ones to display,
% set sortFlag = 1 and set nn to be the number
% of inputs to display.
if exist('noCLF') 
   hold off
else
   clf
end;
nn = 40;
Means = [
1
0
16
1
11
2
1
4
6
0
0
0
1
0
0
1
0
1
0
0
1
0
0
0
0
1
1
0
1
1
1
2
93
98
5
1
5
0
0
0
];
Stds = [
2
1
4
2
4
3
2
4
3
2
0
2
2
1
1
2
1
3
0
1
2
1
1
1
2
2
2
1
2
2
2
3
5
4
4
2
3
1
1
1
];
ymax = max(Means);
ymin = min(Means);
if (ymax == ymin)
   ymax = ymax * 1.01;
   ymin = ymin * 0.99;
end;
if (ymax == ymin)
   ymax = ymax + 0.01;
   ymin = ymin - 0.01;
end;
bar(Means,0.8);
for ii = 1:nn
   if (ii == 1)
   hold on
   end;
   XX = [ii ii];
   YY = [Means(ii)-Stds(ii) Means(ii)+Stds(ii)];
   plot(XX,YY,'-ko','LineWidth',3.0,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',12)
end;
set(gca,'linewidth',2)
set(gca,'fontweight','bold')
set(gca,'fontsize',12)
grid on
box on
title('MARSB Rankings','FontWeight','bold','FontSize',12)
xlabel('Input parameters','FontWeight','bold','FontSize',12)
ylabel('MARSB ranks','FontWeight','bold','FontSize',12)
axis([0 nn+1 ymin-0.01*(ymax-ymin) ymax+0.01*(ymax-ymin)])
