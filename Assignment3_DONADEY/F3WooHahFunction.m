function answer = F3WooHahFunction(x,y)
% This function takes 2 numbers as inputs and returns ONE outputs as
% Woo if their sum is even and Hah if their sum is odd

numbers = [x y];
if mod(sum(numbers),2) == 1
    answer = 'Hah';
else
    answer = 'Woo';
end
end