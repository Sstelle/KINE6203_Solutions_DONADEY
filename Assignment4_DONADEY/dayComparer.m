function dayXtoDayY = dayComparer(SubjectID, DayX, DayY)
% This function compare the values of two days and store the Subject ID in 
% a variable (dayXtoDayY) if the isometric strength value has increased between 
% the two days compared.
%
% /!\ The order of the inputs you choose is going to impact the results, if
% you want to know if day 2 values are superior to day 1 values, 
% DayX = Day1 and DayY = Day2. 
%
% Inputs: SubjectID = double values representing the info you want to find 
%                     your output vector
%         DayX = double values representing day you want to compare, if you 
%                want to see an increase between days across several days, 
%                this should be the first day
%         DayY = double values representing day you want to compare, if you 
%                want to see an increase between days across several days, 
%                this should be the second day
%
% Output: dayXtoDayY = double values representing the subject ID for which
%                      we see an increase in isometric strength value between 
%                      the two days compared (day1 and day 2, or day 2 and day 3)



% Compare Days
dayXtoDayY = 0;
for k = 1:length(SubjectID) % Test/comapre the until the end of the vector 
    if DayX(k) < DayY(k) % Compare the two values to find which if there is 
                         % an increase between the two days 
        %2 diff function , call function twice in script, not like now
        dayXtoDayY(k) = SubjectID(k); % Assign subject ID to the output for 
                                      % each value that
    end
end

% Suppress zero values & display the values in a colum vector
dayXtoDayY(dayXtoDayY==0) = [];
dayXtoDayY = dayXtoDayY';

end