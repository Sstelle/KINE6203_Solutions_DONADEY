function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% This function calculate the mean isometric strength values across all 
% 3 days of lifting and store it in a vector. Then the values of this new 
% vector (not an output) are sorted depending on the participant gender (Male or Female).  
% Another purpose of this function is to calculate the mean of gender
% sorted values (mean of the mean).
%
% Inputs: Day 1, 2 & 3 = double values representing the isometric strength 
% values across all 3 days of lifting
% Gender = logical value representaing the gender of the subject evaluated
%
% Outputs: maleIsoIndMeans = double values representing the average of isometric 
%                            strength values across all 3 days of lifting for 
%                            men subjects
%          femaleIsoIndMeans = double values representing the average of isometric  
%                              strength values across all 3 days of lifting for 
%                              women subjects
%          maleGroupIsoMean = double value representing the average of isometric 
%                            strength values for all men
%          femaleGroupIsoMean = double value representing the average of isometric 
%                            strength values for all men
%

isoIndMeans = (Day1 + Day2 + Day3)/3; % Calculate the mean of isometric strength 
                                      % value of the three daus and store the values 
                                      % in a vector 

for i = 1:length(Gender) % Using a For Loop, find the isoIndMeans values correponding 
                         % to a male or female and store the value in the appropriate vector
    if Gender(i) == 'M' % Logical answer --> Male
        maleIsoIndMeans(i) = isoIndMeans(i);
    else % Logical answer --> Female
        femaleIsoIndMeans(i) = isoIndMeans(i);
    end
end

% Suppress zero values & display the values in a colum vector
maleIsoIndMeans(maleIsoIndMeans==0) = [];
maleIsoIndMeans = maleIsoIndMeans';

femaleIsoIndMeans(femaleIsoIndMeans==0) = [];
femaleIsoIndMeans = femaleIsoIndMeans';

% Round values at 10^-1 (0.1) & display values without excessive zeros
maleIsoIndMeans = round(10^1*maleIsoIndMeans)/10^1;
femaleIsoIndMeans = round(10^1*femaleIsoIndMeans)/10^1;

% Calculate the mean of the gender vector, for females and males
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

% Round values at 10^-1 (0.1) & display values without excessive zeros
maleGroupIsoMean = round(10^1*maleGroupIsoMean)/10^1;
femaleGroupIsoMean = round(10^1*femaleGroupIsoMean)/10^1;


end
