Readme file- include the description of the data, code, programming, and result of this research.
This  dataset supports the research study "Comparing the Impacts of Single- and Multi-Objective Optimization on the Parameter Estimation and Performance of a Land Surface Model".

Folder "Flux-data":
The 'FLX_RU-Fy2_FLUXNET2015_FULLSET_HH_2015-2020_beta-3.zip' file represents half-hourly flux observation data from the RU-FY2 site spanning from 2015 to 2020.

Folder "CoLM(version 2014, Fortran)":
The 'colm2014_src.tar.gz' file comprises the original code of the Common Land Model (CoLM) version 2014 used in this study, written in Fortran and operational on the Linux system.

Folder "PSUADE 1.7.8.a":
The 'PSUADE_v1.7.8b.tar.gz' file contains all the codes and usage instructions for the PSUADE software package, intended for parameter sensitivity analysis.

Folder "Revised PEM-SMC(MATLAB)":
This folder contains three subfolders: LE, NEE, and ALL. They contain MATLAB codes for single-objective optimization of sensitive parameters related to water (folders "LE") and carbon (folders "NEE") in the CoLM modeland multi-objective optimization (folder "ALL").
'mainprogram.m': Set the number of the internal parameters (Np, S) in the PEM-SMC algorithm and the boundary of the sensitive parameters to be optimized;
'PEM-sampler': the core program of the optimization algorithm;
'target.m': calculation of the log transfer of the target distribution;
'LE-verify.txt & NEE-verify.txt": the half-hourly observed data of LE and NEE.

Folder "Result": 
This folder contains the raw data for the results of the parameter sensitivity analysis, parameter optimization results, and model optimization performance outcomes.

Folder "Sensitivity" in "Result":
the sensitivity analysis of 40 static parameters in CoLM on the simulation of water (Folder "LE") and carbon (Folder "NEE") fluxes. Folder "ALL" denotes LE+NEE combined.
'matlabdelta.m': the sensitivity scores of parameters derived from the delta test (DT) method;
'matlabmarsbas.m': the sensitivity scores of parameters derived from the multivariate adaptive regression splines (MARS) method;
'matlabmoatbs':the sensitivity scores of parameters derived from the Morris method;
'matlabrssoboltsib.m': the sensitivity scores of parameters derived from the Sobol’ method.

Folder "Optimization" in "Result":
'LE_parameter_200_100_Last_Test';
'NEE_parameter_200_100_Last_Test';
'ALL_parameter_200_100_Last_Test';
The optimization result files of sensitive parameters in three optimization scenarios, stored in MAT format. This is a three-dimensional matrix, where the first dimension represents the number of particles, the second dimension represents the parameters, and the third dimension represents the number of evolutionary iterations. The parameter optimization results are the median values of all particles in the last evolutionary iteration.

Folder "Modeling Performance" in "Result":
'output_LE.txt' and 'output_NEE.txt":The LE and NEE  simulations  using three different sets of optimized parameters. By comparing the simulation results of different parameter combinations on LE and NEE, the differences in parameter optimization performance can be identified.


