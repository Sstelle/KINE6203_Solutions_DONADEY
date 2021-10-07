function endgame = WinnerLoop(board)
% This function verify each condition of winning, for each turn

if(board(1,1)==board(1,2) && board(1,2)==board(1,3) && board(1,2)~=2) % 1st Condition, Row1
        % Call another conditional
        if (board(1,1)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end      
        %break the loop %after the function?
                
elseif(board(2,1)==board(2,2) && board(2,2)==board(2,3) && board(2,2)~=2) % 2nd Condition, Row2
        if (board(2,1)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
elseif(board(3,1)==board(3,2) && board(3,2)==board(3,3) && board(3,2)~=2) % 3rd Condition, Row3
        if (board(3,2)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
elseif(board(1,1)==board(2,1) && board(2,1)==board(3,1) && board(2,1)~=2) % 4th Condition, Col1
        if (board(2,1)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
elseif(board(1,2)==board(2,2) && board(2,2)==board(3,2) && board(2,2)~=2) % 5th Condition, Col2
        if (board(2,2)==0)
           endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end 
        
elseif(board(1,3)==board(2,3) && board(2,3)==board(3,3) && board(2,3)~=2) % 6th Condition, Col3
        if (board(2,3)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
elseif(board(1,1)==board(2,2) && board(2,2)==board(3,3) && board(2,2)~=2) % 7th Condition, Diag1
        if (board(2,2)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
elseif(board(1,3)==board(2,2) && board(2,2)==board(3,1) && board(2,2)~=2) % 8th Condition, Diag2
        if (board(2,2)==0)
            endgame = 0;
            disp('We have a Winner! You Won')
            
        else
            endgame = 1;
            disp('We have a Winner! Computer Won')
            
        end
        
else
        endgame = 2;
end


end
