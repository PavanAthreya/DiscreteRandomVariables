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

%Part 1 of Project 3
NumberOfIterations = 100000;
N = zeros(NumberOfIterations, 1);
UniformRandomVariable = 0;
for i = 1 : NumberOfIterations
    while 1
        UniformRandomVariable = UniformRandomVariable + rand;
        N(i) = N(i) + 1;
        if UniformRandomVariable >= 1
            UniformRandomVariable = 0;
            break
        end
    end
end
estimatedMean = mean(N);
disp('Estimate of the mean:');
disp(estimatedMean);
