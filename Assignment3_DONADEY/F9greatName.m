function [sizeWord,first,last] = F9greatName(word)
% This Function takes single string value (you have to type it between ' ') 
% as input and returns the length of the string and the first and last 
% letter as 3 different outputs

word = word
sizeWord = (length(word));
first = extract(word,1);
last =  extract(word, sizeWord);
   
end