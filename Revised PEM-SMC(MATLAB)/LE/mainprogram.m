clc
clear all
%% PEM-SMC 
Np=200;                      % number of particles
S=100;                      % number of iterations
% % Parameter boundary
% % sensitive parameter for LE
% % vmax25,   ¦Á   m     ¦×_s   b     ¦È_(sat-d)   
bound=[10,  0.06,  4,   50,    0.01,   0.35;
       200, 0.08,  9,   500,    0.04,   0.55];
% % run PEM_sampler 
[paramter_iteration]=PEM_sampler(Np,S,bound); 
% % save results
save parameter_200_100_Last_Test paramter_iteration
