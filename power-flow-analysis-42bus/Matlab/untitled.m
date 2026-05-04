%Jacobian1= xlsread('Jacobain.xlsx')
%importing jacobian matrix into matlab

Jacobain1 = table2array(Jacobain);  % Convert table to array
Jacobain1 = double(Jacobain1);  % Convert array to double data type

InversJ = inv(Jacobain1);

unitmatrix = zeros(80, 41);
unitmatrix(1:80+1:end) = 1;

%*************************************************
%Defining Sensivity calculation formula
%function S=sensivitity(DeltaP)
%S=InversJ*unitmatrix+DeltaP;

%end
%*****************************************

%firstlyWe calculate the inital  sentsitivity of Ram138
DelpaP_Ram138_1 = zeros(41, 1); %we have 42 bus but one of them are slack which can be neglected
DelpaP_Ram138_1(39) = 1;

S=InversJ*unitmatrix+DelpaP_Ram138_1
%S_initial_Ram=S(DelpaP_Ram138_1)

DelpaP_Ram138_1(39) = 5;
%S_5_Ram=S(DelpaP_Ram138_1)

DelpaP_Ram138_1(39) = 10;
%S_10_Ram=S(DelpaP_Ram138_1)

DelpaP_Ram138_1(39) = 15;
%S_15_Ram=S(DelpaP_Ram138_1)

DelpaP_Ram138_1(39) = 20;
%S_20_Ram=S(DelpaP_Ram138_1)

DelpaP_Ram138_1(39) = 25;
%S_25_Ram=S(DelpaP_Ram138_1)
%***************************************************

%We calculate the inital  sentsitivity of lion345
DelpaP_lion345_1 = zeros(41, 1); 
DelpaP_lion345_1(41) = 1;

S=InversJ*unitmatrix+DelpaP_Ram138_1
%S_initial_lion=S(DelpaP_lion345_1)

DelpaP_lion345_1(41) = 5;
%S_5_lion=S(DelpaP_lion345_1)

DelpaP_lion345_1(41) = 10;
%S_10_lion=S(DelpaP_lion345_1)

DelpaP_lion345_1(41) = 15;
%S_15_lion=S(DelpaP_lion345_1)

DelpaP_lion345_1(41) = 20;
%S_20_lion=S(DelpaP_lion345_1)

DelpaP_lion345_1(41) = 25;
%S_25_lion=S(DelpaP_lion345_1)
