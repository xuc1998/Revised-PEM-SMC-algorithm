clc
clear all
%% PEM-SMC 
Np=200;                      % number of particles
S=100;                      % number of iterations
% % Parameter boundary
% % sensitive parameter for ALL
% % vmax25,   ¦Á   m     ¦×_d   B_d  N
bound=[10,  0.06,  4,   50,  4.5,   0.5;
       200, 0.08,  9,   500, 7,   0.75];
% % run PEM_sampler 
[paramter_iteration]=PEM_sampler(Np,S,bound); 
% % save results
save parameter_200_100_Last_Test paramter_iteration