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
4
10
19
7
6
3
10
33
6
4
4
3
10
7
4
2
4
13
3
4
2
1
3
4
8
3
4
1
8
4
4
20
81
100
47
25
5
4
0
7
];
Stds = [
7
10
11
10
9
6
10
10
9
7
7
6
10
9
8
6
7
10
6
7
5
4
6
7
9
6
8
4
10
8
8
12
6
0
9
10
7
6
2
9
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
