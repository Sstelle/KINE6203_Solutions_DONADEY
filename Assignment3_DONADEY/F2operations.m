function [som, diff, product, maxi] = F2operations (number1,number2)
% This function takes 2 numbers as input and returns 4 outputs as values for 
% the sum, difference, product and max of the two numbers as outputs

vecNumber = [number1 number2];

som = vecNumber(1,1) + vecNumber(1,2);
diff = vecNumber(1,1) - vecNumber(1,2);
product = vecNumber(1,1) * vecNumber(1,2);
maxi = max(vecNumber);

end
