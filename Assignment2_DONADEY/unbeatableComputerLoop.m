function [rowComputer,colComputer] = unbeatableComputerLoop(board)
% Function that set the computer move to counter every player move and end
% in a tie each time

if(board(1,1)==board(1,2) && board(1,2)==0 && board(1,3)~=1) % 1st Condition, Row1-1/3
    rowComputer = 1;
    colComputer = 3;
elseif(board(1,2)==board(1,3) && board(1,3)==0 && board(1,1)~=1) % 2nd Condition, Row1-2/3
    rowComputer = 1;
    colComputer = 1;
elseif(board(1,1)==board(1,3) && board(1,3)==0 && board(1,2)~=1) % 3rd Condition, Row1-3/3
    rowComputer = 1;
    colComputer = 2;
    
elseif(board(2,1)==board(2,2) && board(2,2)==0 && board(2,3)~=1) % 4th Condition, Row2-1/3
    rowComputer = 2;
    colComputer = 3;
elseif(board(2,2)==board(2,3) && board(2,3)==0 && board(2,1)~=1) % 5th Condition, Row2-2/3
    rowComputer = 2;
    colComputer = 1;
elseif(board(2,1)==board(2,3) && board(2,3)==0 && board(2,2)~=1) % 6th Condition, Row2-3/3
    rowComputer = 2;
    colComputer = 2;        
 
elseif(board(3,1)==board(3,2) && board(3,2)==0 && board(3,3)~=1) % 7th Condition, Row3-1/3
    rowComputer = 3;
    colComputer = 3;
elseif(board(3,2)==board(3,3) && board(3,3)==0 && board(3,1)~=1) % 8th Condition, Row3-2/3
    rowComputer = 3;
    colComputer = 1;   
elseif(board(3,1)==board(3,3) && board(3,3)==0 && board(3,2)~=1) % 9th Condition, Row3-3/3
    rowComputer = 3;
    colComputer = 2;
        
elseif(board(1,1)==board(2,1) && board(2,1)==0 && board(3,1)~=1) % 10th Condition, Col1-1/3
    rowComputer = 3;
    colComputer = 1;
elseif(board(2,1)==board(3,1) && board(3,1)==0 && board(1,1)~=1) % 11th Condition, Col1-2/3
    rowComputer = 1;
    colComputer = 1;    
elseif(board(1,1)==board(3,1) && board(3,1)==0 && board(2,1)~=1) % 12th Condition, Col1-3/3
    rowComputer = 2;
    colComputer = 1;
  
elseif(board(1,2)==board(2,2) && board(2,2)==0 && board(3,2)~=1) % 13th Condition, Col2-1/3
    rowComputer = 3;
    colComputer = 2;
elseif(board(2,2)==board(3,2) && board(3,2)==0 && board(1,2)~=1) % 14th Condition, Col2-2/3
    rowComputer = 1;
    colComputer = 2;
elseif(board(1,2)==board(3,2) && board(3,2)==0 && board(2,2)~=1) % 15th Condition, Col2-3/3
    rowComputer = 2;
    colComputer = 2;
        
elseif(board(1,3)==board(2,3) && board(2,3)==0 && board(3,3)~=1) % 16th Condition, Col3-1/3
    rowComputer = 3;
    colComputer = 3;
elseif(board(2,3)==board(3,3) && board(3,3)==0 && board(3,1)~=1) % 17th Condition, Col3-2/3
    rowComputer = 3;
    colComputer = 1;
elseif(board(1,3)==board(3,3) && board(3,3)==0 && board(2,3)~=1) % 18th Condition, Col3-3/3
    rowComputer = 2;
    colComputer = 3;
        
elseif(board(1,1)==board(2,2) && board(2,2)==0 && board(3,3)~=1) % 19th Condition, Diag1-1/3
    rowComputer = 3;
    colComputer = 3;
elseif(board(2,2)==board(3,3) && board(3,3)==0 && board(1,1)~=1) % 20th Condition, Diag1-2/3
    rowComputer = 1;
    colComputer = 1;
elseif(board(1,1)==board(3,3) && board(3,3)==0 && board(2,2)~=1) % 21st Condition, Diag1-3/3
    rowComputer = 2;
    colComputer = 2;
        
elseif(board(1,3)==board(2,2) && board(2,2)==0 && board(3,1)~=1) % 22nd Condition, Diag2-1/3
    rowComputer = 3;
    colComputer = 1;
elseif(board(2,2)==board(3,1) && board(3,1)==0 && board(1,3)~=1) % 23rd Condition, Diag2-2/3
    rowComputer = 1;
    colComputer = 3;
        %computer move ==board{1,3}
elseif(board(1,3)==board(3,1) && board(3,1)==0 && board(2,2)~=1) % 24th Condition, Diag2-3/3
    rowComputer = 2;
    colComputer = 2;

elseif (board(2,2) == 2) % --> First moves of Compututer must be center or corner to block Player
    rowComputer = 2;
    colComputer = 2;
elseif (board(1,1) == 2)
    rowComputer = 1;
    colComputer = 1;
elseif (board(1,3) == 2)
    rowComputer = 1;
    colComputer = 3;
elseif (board(3,1) == 2)
    rowComputer = 3;
    colComputer = 1;
elseif (board(3,3) == 2)
    rowComputer = 3;
    colComputer = 3;
    
else
    [availrows, availcols] = find(board==2);
    availrows = availrows';
    availcols = availcols';
    computermove = randi(length(availrows));
    rowComputer = availrows(1,computermove);
    colComputer = availcols(1,computermove);
end

end



