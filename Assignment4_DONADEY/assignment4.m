%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 4: Matlab Analyzing Isometric Strength Data
%
% Submitted by: Estelle DONADEY
%
% Due: November 04, 2021
%
% Instructions: 
%
% This script uses several functon in order to analyse a set of data. All input 
% data is contained in the file ‘isok_data_6803.csv’
% 
% Analyses concern :
% - Importing the data 
% - Determining  mean isometric strength values accross the 3 days depending 
%   on gender and calculating the overall mean of gender isometric strength values.
% - Comparing isometric strength values between the 3 days and identifying
%   participants with increased values from Day1 to Day2 and from Day2 to Day3.
% - Normalize the data of each participant regarding their weight and
%   calculate the average of isometric strength value for each day
% - Store the results in a table 
% 
% Results are exported on a document named "iso_results.csv"
% When a 
%
% /!\ DON'T FORGET TO HAVE THE FUNCTION IN THE SAME FILE AS THIS SCRIPT /!\
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

% Function used to import data from .csv file
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv', [2, Inf]);

% Function to calculate gender individual and mean isometric strength values
% accross the 3 days
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

% Function to determine which participant showed an increase in isometric
% strength values between Day1 and Day2 and between Day2 and Day 3
day1toDay2 = dayComparer(SubjectID, Day1, Day2);
day2toDay3 = dayComparer(SubjectID, Day2, Day3);
% day1toDay3 = dayComparer2(SubjectID, Day1, Day3);

% Normalizing data
Weight = Weight'; % Transform row vector in colum vector like every other vector
for g = 1:length(Day1)
    % Calculate the data normized bt the weight
    normDay1(g) = Weight(g)/Day1(g); 
    normDay2(g) = Weight(g)/Day2(g);
    normDay3(g) = Weight(g)/Day3(g);
end
% Transform row vector in colum vector like every other vector
normDay1 = normDay1'; 
normDay2 = normDay2';
normDay3 = normDay3';

% Calculate group means for each day, vector has been change from row
% vector to colum vector
normDay1mean = mean(normDay1)';
normDay2mean = mean(normDay2)';
normDay3mean = mean(normDay3)';

% Round values at 10^-1 (0.1) & display values without excessive zeros
normDay1mean =  round(10^1*normDay1mean)/10^1;
normDay2mean =  round(10^1*normDay2mean)/10^1;
normDay3mean =  round(10^1*normDay3mean)/10^1;

% Export results

% Creating a Table with empty values
sz = [13 9];% 13 is the maximum values I have for male group, so 13 lines is enough for the table 
varTypes = ["double","double","double","double","double","double","double","double","double"];
varNames = ["maleIsoIndMeans","femaleIsoIndMeans","maleGroupIsoMean","femaleGroupIsoMean","day1toDay2","day2toDay3","normDay1mean","normDay2mean","normDay3mean"];

isokData_results = table('Size',sz,'VariableTypes',varTypes,'VariableNames',varNames); % Creation of an empty table
isokData_results(:,:) = {NaN};

% Inserting values from each vector into a colum of the table, leaving
% empty values (0) if the  value is not existant
isokData_results(1:length(maleIsoIndMeans),1) = table(maleIsoIndMeans);
isokData_results(1:length(femaleIsoIndMeans),2) = table(femaleIsoIndMeans);
isokData_results(1:length(maleGroupIsoMean),3) = table(maleGroupIsoMean);
isokData_results(1:length(femaleGroupIsoMean),4) = table(femaleGroupIsoMean);
isokData_results(1:length(day1toDay2),5) = table(day1toDay2);
isokData_results(1:length(day2toDay3),6) = table(day2toDay3);
isokData_results(1:length(normDay1mean),7) = table(normDay1mean);
isokData_results(1:length(normDay2mean),8) = table(normDay2mean);
isokData_results(1:length(normDay3mean),9) = table(normDay3mean);
% Supress excessive 0 after the coma (,) in decimal values, in the table in
% the results document
format short g


% Export Table in the same file as this script
writetable(isokData_results,'iso_results.csv');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% END SCRIPT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




