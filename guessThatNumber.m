function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Estelle DONADEY
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
% BUG FOUND COUNTER = 11/12
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced % BUG HERE#1:  The statement is never true and we nerver break/exit the loop
                                                                  % HOW FOUND#1: While running this statement 
                                                                  % PROBLEM#1:   No matter what level entered, the || statement prevent to exit 
                                                                  %              the loop, because each level selected is always "true" and && 
                                                                  %              statement instead would mean hat when one condition is "false", 
                                                                  %              we break the loop.
                                                                  % BUG FIXED#1: Changed || (or) statement to && (and) statement     
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end
 

% set highest secret number based on level selected

if level == beginner % BUG HERE#2:  Wrong Statement for IF loop
                     % HOW FOUND#2: Code stops running because of an error message
                     % PROBLEM#2:   One "=" missed in the if statement
                     % BUG FIXED#2: One '=' added
    highest = beginnerHighest;
elseif level == moderate
    highest = moderateHighest;
else
    highest = advancedHighest; % BUG HERE#3:  The value that we want to store in highest doesn't exist test condition
                               % HOW FOUND#3: While running, error message
                               % PROBLEM#3:   Writting error, missed "H" instead of "h" in the moderateHighest statement
                               % BUG FIXED#:  Changed "h" to "H" in the statement so it matches the variable stated abbove 
                               %              ("moderateHighest = 100;")
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1 highest],1); % BUG HERE#4:  Always give the same number for a same level entered 
                                     % HOW FOUND#4: I tried several times and looked at the value of the secret number 
                                     %              to be sure it was random 
                                     % PROBLEMS#4:  - rand function gives a random number (integer) between 0 and 1
                                     %              - mulyiplying random number by the highest just changes the
                                     %                range of random number between highest and highest+1
                                     %              - floor function suppress decimals to the nearest integers which
                                     %                is not helping here because here the random number is between
                                     %                highest and highest+1 (=> rand()+1*highest)
                                     % BUG FIXED#4 It's better to use randi and state the rage of the random number, 
                                     %              easier and faster

% initialize number of guesses and User_guess

numOfTries = 0; % BUG HERE#5:  The number of tries is already 1 when no guesses have been made
                % HOW FOUND#5: When playing it says 2 tries but I found the number in 1 try
                % PROBLEM#5:   Doesn't give the actual number of tires but alway gives numOfTries+1
                % BUG FIXED#5: The number of tries should be equal 0 at first (according to the 
                %              rest of the code that add 1 after each guess)  
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    
    while userGuess < 1 || userGuess > highest % BUG HERE#6:  Statement is wrong
                                               % HOW FOUND#6: While running
                                               % PROBLEM#6:   It doesn't accept the highest value
                                               % BUG FIXED#6: Supress = from the "userGuess >= highest" 
                                               %              to allow to type the highest value (ex. 10, 100, 1000) 
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        userGuess = input('')
    
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
    if userGuess < secretNumber  % BUG HERE#7:  Statement doesn't match whats written
                                 % HOW FOUND#7: Reading the code
                                 % PROBLEM#7:   Error message because of the two same 
                                 %              statements, stops running 
                                 % BUG FIXED#7: changed the direction of the sign to 
                                 %              match the text below
        
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber 
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif userGuess == secretNumber && numOfTries == 1 % BUG HERE#8:  It always says winning on first try
                                                        % HOW FOUND#8: When running code
                                                        % PROBLEM#8:   The number of tries is never considered
                                                        % BUG FIXED#8: Add "&& numOfTries == 1" to confirm that this is the
                                                        %              first try
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else % means if guessNumber = secretNumber for any number of tries > 1
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
        secretNumber, numOfTries); % BUG HERE#9:  Miss the second entry variable 
                                   % HOW FOUND#9 While running
                                   % PROBLEM#9:   Doesn't give the number of tries 
                                   %              whe displaying the sentence
                                   % BUG FIXED#9: Added ",numOfTries" in the fprintf 
                                   %              function to display the number of tries 
                                   %              in the text that goes with finding the secret number
    
    end % of if loop % BUG HERE#10:  Error message
                     % HOW FOUND#10: While running
                     % PROBLEM#10:   Miss an end to finish the loop
                     % BUG FIXED#10: Added and "end" to end the IF loop

end  % of guessing while loop

fprintf('\nGame Over. Thanks for playing the Guess That Number game.\n\n'); % BUG?: Put "\n" at begning to go at the next line
                                                                            % BUG HERE#11:  "Game Over" after each guessing
                                                                            % HOW FOUND#11: While running
                                                                            % PROBLEM#11:   "Game Over" after each guessing
                                                                            % BUG FIXED#11: Moved this line outside of the WHILE loop, 
                                                                            %               at the end of the script to finish the game, 
                                                                            %               so when the user guesses the correct number 
                                                                            %               it dispaly the "Game Oers"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% end of game %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

