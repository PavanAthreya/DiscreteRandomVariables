%Name: Pavan Athreya Narasimha Murthy
%USC ID: 9129210968
%E-mail: pavanatn@usc.edu
%Ph: +1(323)-684 5715
%Term: Fall 2018
%Course: EE511
%Professor: John Silvester

%Clear the Workspace variables and command window for every run
clear all;
clc;

%Part 2 of Project 3
NumberOfIterations = 100000;
N = zeros(NumberOfIterations, 1);
N(1) = 1;
UniformRandomVariable = zeros(NumberOfIterations, 1);
UniformRandomVariable(1) = rand;
for i = 1 : NumberOfIterations
    for j = 2 : NumberOfIterations
        UniformRandomVariable(j) = rand;
        N(i) = N(i) + 1;
        if UniformRandomVariable(j-1) > UniformRandomVariable(j)
            break
        end
    end
end
estimatedMean = mean(N);
disp('Estimate of the mean:');
disp(estimatedMean);
        
        