function L=target(x,observed_data)
% 
% x is the sample
% L is the log transfer of the target distribution

T=4417;
observed_LE=observed_data(:,1);
observed_NEE=observed_data(:,2);
% wirte the x into certain path txt file
fid=fopen('/group_homes/lzu_public/home/u120220909911/Summer/Last/ALL/input_step.txt','w');
for i=1:size(x,2)
    fprintf(fid,'%24.16e\n',x(i));
end
fclose(fid);
% run model: the path is in Supercomputing Center of Lanzhou University
system('/group_homes/lzu_public/home/u120220909911/Summer/Last/ALL/run');
% caculate L1
model_LE=importdata('/group_homes/lzu_public/home/u120220909911/Summer/Last/ALL/output_LE.txt');
sum_error1=sum((model_LE-observed_LE).^2);
sigmav1=sum_error1/T;
L1=(-T/2*(log(2*pi*sigmav1))-sum_error1/(2*sigmav1));


% cacualte L2
model_NEE=importdata('/group_homes/lzu_public/home/u120220909911/Summer/Last/ALL/output_NEE.txt');
sum_error2=sum((model_NEE-observed_NEE).^2);
sigmav2=sum_error2/T;
L2=(-T/2*(log(2*pi*sigmav2))-sum_error2/(2*sigmav2));
% cacualte multiple objective L
L=L1+L2;
%delete certain file
system('/group_homes/lzu_public/home/u120220909911/Summer/Last/ALL/rmfile');

