function L=target(x,observed_data)
% 
% x is the sample
% L is the log transfer of the target distribution

T=4417;

% wirte the x into certain path txt file
% the path is in Supercomputing Center of Lanzhou University
fid=fopen('/group_homes/lzu_public/home/u120220909911/Summer/Last/LE/input_step.txt','w');
for i=1:size(x,2)
    fprintf(fid,'%24.16e\n',x(i));
end
fclose(fid);
% run model
system('/group_homes/lzu_public/home/u120220909911/Summer/Last/LE/run');
% caculate L
model_data=importdata('/group_homes/lzu_public/home/u120220909911/Summer/Last/LE/output_LE.txt');
sum_error=sum((model_data-observed_data).^2);
sigmav=sum_error/T;
L=(-T/2*(log(2*pi*sigmav))-sum_error/(2*sigmav));
%delete certain file
system('/group_homes/lzu_public/home/u120220909911/Summer/Last/LE/rmfile');

