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

%Part 3 of Project 3
NumberOfIterations = 10000;
X2Values = zeros(NumberOfIterations, 1);
X3Values = zeros(NumberOfIterations, 1);
for i = 1 : NumberOfIterations
    Distance = 1;
    X = zeros(10, 1);
    X(1) = 1;
    UniformRandomVariable = zeros(100, 1);
    Count = 1;
    UniformRandomVariable(1) = rand;
    for j = 2 : 100
        MaxValue = max(UniformRandomVariable);
        UniformRandomVariable(j) = rand;
        if (MaxValue <  UniformRandomVariable(j))
            Count = Count + 1;
            X(Count) = Distance;
            Distance = 1;
        else
            Distance = Distance + 1;
        end
        if (UniformRandomVariable(j) > 0.999)
            break;
        end
    end
    X2Values(i) = X(2);
    X3Values(i) = X(3);
end
% disp('Estimate of the X2 mean:');
% disp(mean(X2Values));
disp('Estimate of the X3 mean:');
disp(mean(X3Values));
% hist(X2Values);
hist(X3Values);

