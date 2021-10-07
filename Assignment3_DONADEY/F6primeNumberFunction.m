function answer = F6primeNumberFunction(number)
% This function takes ONE number as input and returns 'TRUE' if the number is 
% a prime number and 'FALSE' if the number is not prime. When the number cannot 
% be divided anymore, we exit the loop, then we compare the number of division
% made to the initial number --> if it's the same, the number is a prime 

primeNumber = isprime(number);

if primeNumber == 1
    answer = 'TRUE';
else
    answer = 'FALSE';
end
end