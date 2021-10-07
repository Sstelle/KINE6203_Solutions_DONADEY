

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% NOT MEANT TO BE RUNNED %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function output = nameOfFunction(input)
clear
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 1 : Write a function that takes a number as input and returns a 
% value that is 2 times the number as output

function result = F1multi(number)
% This function takes a number as input and returns a single value that is 
% 2 times the number as output 

result = number*2;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Funciton 2 : Write a function that takes 2 numbers as input and returns 
% values for the sum, difference, product and max of the two numbers as outputs

function [sum, diff, product, maxi] = F2operations (number1,number2)
% This function takes 2 numbers as input and returns 4 outputs as values for 
% the sum, difference, product and max of the two numbers as outputs

vecNumber = [number1 number2];

sum = vecNumber(1,1) + vecNumber(1,2);
diff = vecNumber(1,1) - vecNumber(1,2);
product = vecNumber(1,1) * vecNumber(1,2);
maxi = max(vecNumber);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 3 : Write a function that takes 2 numbers as inputs and returns 
% Woo if their sum is even and Hah if their sum is odd

function answer = F3WooHahFunction(x,y)
% This function takes 2 numbers as inputs and returns 
% Woo if their sum is even and Hah if their sum is odd
numbers = x+y
if mod(sum(numbers),2) == 1
    disp('Hah')
else
    disp('Woo')
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fucntion 4 : Write a function that takes in a number of quarters, dimes, 
% nickels, and pennies as inputs and returns the total amount as output.

function cash = F4countMyMoney(quarters, dimes, nickels, pennies)
% This fucntion takes 4 inputs as the number of quarters, dimes, nickels, and 
% pennies and returns the total amount of money as a single output 

cash = ((quarters*25) + (dimes*10) + (nickels*5) + (pennies*1)) /100

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 5 : Write a function that accepts a single 3-element array 
% (e.g. [3 4 5]), and returns a logical value (0 or 1) indicating if the 
% 3 elements of the array represent the sides of a  valid triangle.
% For those who can't remember...in a valid triangle the sum of the lengths 
% of the 2 shorter sides are greater than the length of the longest side.

function result = F5validTriangle(triangle)
% Enter a vector of 3 values of 3values like [1 2 3] as input.
% This function returns a logical value (0 or 1) indicating if the 
% 3 elements of the array represent the sides of a  valid triangle
% triangle must be a vector of 3 values

maxSide = max(triangle);
IDXlowValues = find(triangle ~= maxSide);
lowValues = triangle(IDXlowValues);
lowSidesSum = sum(lowValues);

if lowSidesSum > MaxSide
    result = 1; %VALID TRIANGLE
else
    result = 0; %NON VALID TRIANGLE
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 6 : Write a function that takes a number as input and returns 
% true if the number is a prime number and false if the number is not prime.

function answer = primeNumberFunction(number)
% This function takes ONE number as input and returns 'TRUE' if the number is 
% a prime number and 'FALSE' if the number is not prime. When the number cannot 
% be divided anymore, we exit the loop, then we compare the number of division
% made to the initial number --> if it's the same, the number is a prime 

y=2 % Begin at 2 because all number can be divided by 1

while rem(number,y)~=0 % Remainder of division number/y must be 0 to exit loop
    y = y + 1;
end

if y == number
    disp('TRUE')
else
    disp('FALSE')
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 7 : Write a function that takes two vectors and plots their 
% values on a figure. This function should set up the figure with titles for 
% the chart and each axis (can be generic names).

function graph = F7displayFigureFunction(vec1,vec2)
% This function takes TWO vectors (several values) and plot their values (lines)
% on the same graph

graph = figure(1)
plot(vec1, 'x-.b')
title('Visualizing of Data');
xlabel('Time (s)');
ylabel('Vectors');
hold on
plot(vec2, 'd-k')

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 8 : Write a function that takes 2 numbers as input and displays 
% a counter from the lower number to the higher number.
%
% If Inputs = (a, b)
% Expected output:
% a
% a+1
% a+2
% …
% b

function outputs = F8accumul(a,b)

if a < b
    outputs = a:b
elseif b < a
    outputs = b:a
else %a = b
    outputs = [a b]
    disp('Careful, input values are equal.')    
end      
            
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Function 9 : Write a function that takes a string value as input and 
% returns the length of the string and the first and last character as outputs.
%
% If input = ‘Halloween’
% Expected Output:
% 9
% H
% n

function [sizeWord,first,last] = F9greatName(word)
% This Function takes a string value as input and returns the length of 
% the string and the first and last character as outputs

sizeWord = (length(word));
first = extract(word,1);
last =  extract(word, sizeWord);
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function 10 : Write a function that does not take any input and displays
% “Thank goodness this assignment is over” when called.

function stop = F10finishLine()
% This Function does not take any input and displays outputs

stop = 'Thank goodness this assignment is over'

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THE END OF THE SCRIPT %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



