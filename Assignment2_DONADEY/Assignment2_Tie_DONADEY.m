%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Tic Tac Toe
%
% Submitted by: Estelle DONADEY
%
% Due: October 7, 2021
%
% Instructions: 
%/!\ READ THESE INSTRUCTIONS CAREFFULLY IF YOU WANT TO PLAY TIC TAC TOE /!\
%
% You're about to play the game TIC TAC TOE ! Every knows how to play, so I
% won't be explainin the rules again, but you need some information about
% how to play the game on matlab here.
%
% - Player move = 0, as a player your move will always be 0
% - Computer move = 1, the computer move will always 1
% - Empty spot = 2, when the sport on the board is available a 2 is visible
% 
% When it's your turn to play, you have to specify the row and col of the
% empty spot you want to mark with a 0, you will be ask to choose a number
% between 1 and 3 for row and for col. For example, if you want to play 
% the middle cell, you should enter row 2 and col 2. To know where you want
% to assign your 0, you have to visualize the board like this : 
%
%       row 1  |  row 1  |  row 1
%       col 1  |  col 2  |  col 3
%      ----------------------------
%       row 2  |  row 2  |  row 2
%       col 1  |  col 2  |  col 3
%      ----------------------------
%       row 3  |  row 3  |  row 3
%       col 1  |  col 2  |  col 3
%
% You're going to play in the "Command Window", so When you open the
% script, enlarge the "Command Window" window and click RUN. Then, follow
% the instruction given in the "Command Window".
%
% DON'T FORGET to want "WinnerLoop" function in the same file as this
% script !
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% Tic Tac Toe Game %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
close all
clc

%%%% Starting inputs %%%%

errorMessage = 'Answer with Y or N, please'; % Display this when the input 
                                             % answer cannot be read
Player = 0; % Know who turn it is
Computer = 0; % Know who turn it is
turn = [1 2 1 2 1 2 1 2 1]; % For loop, who turn it is
welcomeMessage = 'Hello! Do you want to play a Tic Tac Toe with me ? (Answer with Y or N, please)';
askPlayFirst = 'Do you want to play first ? (Answer with Y or N, please)';
endgameMessage = 'The game is finished, do you want to play again? (Answer with Y or N, please)';

rowPlayer = 0;
ColPlayer = 0;
ComputerMove = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Begin to play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% Loop that ask if Player wants to play Tic Tac Toe %%%%

wantPlayAgain = 1;

while wantPlayAgain == 1
    wantPlay = 0;
    
    while wantPlay ~= 1 % Manage the error message and ask again
        
        userAnswer = input(welcomeMessage,'s')
        if userAnswer == 'Y' %If player wants to play, the game board appear
            board = ones(3,3)*2
            wantPlay = 1;
            disp('You are going to play Tic Tac Toe')
            
            %%% Ask Play First %%%
            
            playFirst = 0;
            
            while playFirst ~= 1 % Manage the error message and ask again
                
                userRespFirst = input(askPlayFirst,'s') % Ask if the Player wants to play First
                if userRespFirst == 'Y' % If player wants to play first, the according code is done
                    Player = 1;
                    Computer = 2;
                    playFirst = 1;
                    disp('You decided to play first')
                elseif userRespFirst == 'N' % Same if computer plays first
                    Computer = 1;
                    Player = 2;
                    playFirst = 1;
                    disp('You decided to play second')
                else
                    disp(errorMessage)
                end % End if userRespFirst
            
            end % End while playFirst
        
        elseif userAnswer == 'N'
            wantPlay = 1;
            negAnswer = 'Maybe another time, Goodbye!'
            return % Terminate script
        else
            disp(errorMessage)
        end % End if userAnswer
    
    end %End while wantPlay
    
    %%%% Playing Turn by Turn %%%%
    
    for moves = 1:length(turn) 
        
        if turn(moves) == Player
            
            %%%% Payer's Turn to Play %%%%
            
            playerCounterMoves = 0;
            
            % Ask to play and verify player move
            while playerCounterMoves ~=  1 % Counter that ask to re ask if errorMessage
                % Condition to continue the loop
                
                validMove = 0;
                
                while validMove ~= 1 % Condition Player's move is in he board
                    disp('What is your move ?') % Allow user to play
                    
                    validMoveRow = 0;
                    
                    while validMoveRow ~= 1 % Check if Row number is valid or ask again
                        rowPlayer(moves) = str2num(input('Enter a number between 1 and 3 for Row: ','s'));
                        
                        if (rowPlayer(moves)==1 || rowPlayer(moves)==2 || rowPlayer(moves)==3) % If loop check row number
                            validMoveRow = 1;
                        else
                            disp('Your move is no valid. The row number has to be in a range between 1 and 3')
                        end % End if loop check row number
                    end % End while loop check row number
                    
                    validMoveCol = 0;
                    
                    while validMoveCol ~= 1 % Check if Col number is valid or ask again
                        colPlayer(moves) = str2num(input('Enter a number between 1 and 3 for Col: ','s'));
                        
                        if (colPlayer(moves)==1 || colPlayer(moves)==2 || colPlayer(moves)==3) % If loop check col number
                            validMoveCol = 1;
                        else
                            disp('Your move is no valid. The col number has to be in a range between 1 and 3')
                        end % End if loop check col number
                    end % End while loop check col number
                    
                    if (validMoveRow==1 && validMoveCol==1) % Check if both row and col are valid
                        validMove = 1;
                    else
                        validMove = 0;
                    end %End if loop check both row and col are valid
                end % End while loop the player move is valid
                
                
                if board(rowPlayer(moves), colPlayer(moves)) == 2;
                    disp("Turn Number: " + moves);
                    board(rowPlayer(moves), colPlayer(moves)) = 0 % Type 0 in the board 
                    playerCounterMoves =  1; % End loop, Condition that ends the loop
                    %disp("You have played " + rowPlayer + "," + colPlayer);
                else
                    disp('Space not available, choose somewhere else');
                end % End if available player move
                
            end % End while player move
        
        else % if turn's to play == Computer
            
            %%%% Computer's Turn to Play %%%%
            
            disp("Turn Number: " + moves);
            [rowComputer,colComputer] = unbeatableComputerLoop(board);
            board(rowComputer,colComputer) = 1
            
            disp("Computer has played " + rowComputer + "," + colComputer);
        
        end % End if turn's
        
               
        gameStatus = WinnerLoop(board); % If function
        
        if gameStatus == 0
            break
        elseif gameStatus == 1
            break
        elseif gameStatus == 2
            disp('No one wins')
        end     
        
        
        % Set the end game
        if (moves == 8 && gameStatus == 2)
            disp('It is a tie... Endgame');
            break % Breaks the loop here --> continue to after for loop
        elseif (moves == 9 && gameStatus == 2)
            disp('It is a tie... Endgame');
            
        else
            %continue for loop
            disp('Continue');
        end % End if 9th turn Endgame
    
    end % End For loop
    
    moves = moves + 1;
    
    counterPlayAgain = 0;
    
    while counterPlayAgain ~= 1 % Manage the error message and ask again
        
        userPlayAgain = input(endgameMessage,'s')
        if userPlayAgain == 'Y'
            wantPlayAgain = 1;
            counterPlayAgain = 1;
            disp('You chose to play again')
        elseif userPlayAgain == 'N'
            wantPlayAgain = 0;
            counterPlayAgain = 1;
            disp('You chose not to play again. Maybe another time! Bye!')
        else
            disp(errorMessage)
        end % End if wantPlayAgain
    
    end % End while wantPlayAgain

end % End program, End while 

