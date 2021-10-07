function outputs = F8accumul(a,b)
% This function takes 2 numbers as input and displays a counter (vector) from the 
% lower number to the higher number with a space of 1. If numbers are
% equal, a message appears and displays the vector with 2 equal numbers

if a < b
    outputs = a:b;
elseif b < a
    outputs = b:a;
else %a = b
    outputs = [a b];
    disp('Careful, input values are equal.')    
end    
            
end