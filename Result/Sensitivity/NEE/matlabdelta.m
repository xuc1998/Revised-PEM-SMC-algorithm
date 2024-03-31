if exist('noCLF') 
   hold off
else
   clf
end;
A = [
0.000000e+00
4.000000e-02
5.000000e-02
0.000000e+00
5.000000e-02
4.000000e-02
0.000000e+00
0.000000e+00
5.000000e-02
0.000000e+00
5.000000e-02
0.000000e+00
0.000000e+00
0.000000e+00
4.000000e-02
4.000000e-02
0.000000e+00
5.000000e-02
4.000000e-02
0.000000e+00
0.000000e+00
4.000000e-02
4.000000e-02
0.000000e+00
0.000000e+00
0.000000e+00
5.000000e-02
0.000000e+00
4.000000e-02
9.000000e-02
4.000000e-02
0.000000e+00
1.000000e+00
1.000000e+00
1.000000e-01
0.000000e+00
0.000000e+00
0.000000e+00
4.000000e-02
0.000000e+00
];
bar(A, 0.8);
set(gca,'linewidth',2)
set(gca,'fontweight','bold')
set(gca,'fontsize',12)
grid on
box on
title('Delta Test Rankings','FontWeight','bold','FontSize',12)
xlabel('Input parameters','FontWeight','bold','FontSize',12)
ylabel('Delta Metric (normalized)','FontWeight','bold','FontSize',12)
