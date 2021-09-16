%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Estelle DONADEY
%
% Due: September 16, 2021
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = "https://www.mathworks.com/help/matlab/";
documentation = web(helpURL)

% 2. What does the command 'clear all' do?
%
% Answer: 
% This command erases everything that is written in the "Workspace".


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

% Answer : 
%The function that would take the average of "numbers" is the mean
%function.
numbers = [1 7 21 32 67 32453]; % Affect data to a variable
averageAnswer = mean(numbers); % Calculate the average of "numbers"

% 4. What command would you type to see a list of all installed toolboxes?

%license('test','statistics_toolbox')
%ver('Statistics and Machine Learning Toolbox')
%ver('image_toolbox')
%contains(struct2array(ver), 'Statistics and Machine Learning Toolbox')
%any(any(contains(struct2cell(ver), 'Statistics and Machine Learning Toolbox')))

seeToolboxes = ver

% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

url = 'https://www.mathworks.com/help/images/referencelist.html?type=function&s_cid=doc_ftr'
imageToolboxURL = web(url)

help images

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure % open a figure window
plot(x,y) %<- command goes here %% drw a graph
title('Figure N°1') % Gives a name to the graph
xlabel('X axis') %Gives a name to the x axis
ylabel('Y axis') % Gives a name to the y axis
        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

% Answer: 
%The same functions can be applied to a matrix, but matlab will do 
% matrix operation. If we want to stick with basic opération, we must put 
% a point (.* or./ , for example) before the operator sign.
values = rand(5,2);

maxValues = max(values);
minValues = min(values);
medianValues = median(values);
meanValues = mean(values);
varValues = var(values);
stdValues = std(values);
%%% Bartlett Test %%%
%[ndim, prob, chisquare] = barttest(values,0.05); % this test does not work
%on my computer, I don't have the toolbox to run it.

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

% Answer: 
%  IF loops and FOR loops.
%  The IF loop execute the same command  until the response changes, for
%  example
numbers = 67;
if numbers == 67;
    numbers2 = numbers + 10;
else
    numbers2 = 0;
end
%  The FOR loop helps execute a command for a serie of input (variable), 
%  for example
value = 1;
for i=1:10;
    value = value + 1;
end


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

% Answer: 
% "NaN" stands fo "Not a Number". This answer appears when the results of 
% your operation is not real (number), or if it's not a number at all
% (letters (char), instead of numbers for specific cases).


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A)

s = nansum(A) % Return the sum of A without taking into accout the value NaN.

% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

%minesweepergame beginner;
%minesweepergame(10,5,10); % this test does not work
%on my computer, I don't have the toolbox to run it.
xpbombs %short cut to open the game

% 12. Create a variable myage and store your age on the day the hurricane is 
% supposed to impact our area in it. Subtract two from the value of the
% variable. Add one to the value of the variable. 

myage = (21 - 2)+1

% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Store the value in a variable called myMaxNameLength

myMaxNameLength = namelengthmax

% 14. Create two variables to store a weight in pounds and ounces. Use who and whos
% to see the variables. Clear one of them and then use who and whos again.

weightP = 20;
weightO = 100;
who
whos
clear weightO;
who
whos

% 15. Store a number with a decimal place in a double variable (the default). Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming).

default = int32([2.5 4.2]);% 1 solution
castDefault = cast(default, "int32");% other solution

% 16. Create a variable called pounds to store a weight in pounds. Convert this to 
% kilograms and assign the result to a variable kilos.

pounds = 120;
kilos = ((pounds/2) - (1/10*(pounds/2)));

Kilos = 55 ; % From my french perspective
Pounds = Kilos*2.2 ; % From my french perspective

% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) and store the result in a variable cTemp.

fTemp = 90;
cTemp = (ftemp-32) *(5/9);

ctemp = 23; % From my french perspective
ftemp = (cTemp*1.8)+32 ; % From my french perspective

% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA = [2;3;4;5;6;7];
vecB = [1.1000; 1.3000; 1.5000; 1.7000];
vecC = [8; 6; 4; 2];

% 20. Give the MATLAB expression that would create a vector 
% (in a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi:

vec = linspace(0,2*pi,50);

% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.

colvec = -1:0.5:1;
colvec = colvec';

% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called result of all zeros with the 
% dimensions given by the values of rows and cols. 

rows = randi([1,5]);
cols = randi([1,5]);
result = zeros(rows, cols);

% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10. Perform each of the following and store your results in 
% appropriately named variables. (you should have a seperate line of code for each):
% - subtract 3 from each element n
% - count how many are positive
% - get the absolute value of each element
% - find the maximum.

randVec = randi([-10,10], 5); % Create a 5x5 matrix with ramdom number from -10 to 10
substractrandVec = randVec - 3;% Subtract 3 at each number of the matrix
PositiverandVec = sum(randVec(:)>=0); % Count the number of positive numbers of the matrix
absrandVec = abs(randVec); % Return the absolute number of each number of the matrix
maxrandVec = max(randVec); % Return the max of each col
maxMaxMatrix = max(max(absrandVec)); % Return the max of the matrix (1 number)

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

base1 = 4; % Length of the small base of the trapezoid
base2 = 6; % Length of the big base of the trapezoid
height = 12; % Heigth of the trapezoid
trapArea = ((base1 + base2)*height) / 2 % Calculate the area of the trapezoid

% 25. In biomechanics, a vector is a set of numbers that indicate 
% both magnitude and direction. Units such as velocity and force are vector 
% quantities. An example of a vector could be <2.34, 4.244, 5.323> meters/second. 
% This vector describes the velocity of an object at a certain point in 
% three-dimensional space, <x,y,z>. In solving problems related to vectors, 
% it is handy to know the unit vector of a certain measurement. 
% A unit vector is a vector that has a certain direction, but a magnitude of 1.
% The equation for a unit vector in three-dimensional space is:

% u = <x,y,z>/sqrt(x^2 + y^2 + z^2)

% Write some code that prompts the user for x, y, and z values, and then 
% calculates the unit vector and stores the value in a variable called
% unitVector. 

userQuestion = 'Define the tridimentional vector :'
x = input('X = '); % Store the answer of the user in a variable
y = input('Y='); 
z = input('Z=');

unitVector = [x,y,z]/sqrt(x^2 + y^2 + z^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line

prompt = 'Hello World' % Print what's written in ' ' .
prompt2 = 'How are you ?' % Ask a question to the user
userAnswer = input(prompt2,'s') % Allow the user to type something and wait
%until he does & Store the answer of the user in a variable

%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)