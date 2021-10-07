function result = F5validTriangle(triangle)
% Enter a vector of 3 values of 3values like [1 2 3] as input.
% This function returns a logical value (0 or 1) indicating if the 
% 3 elements of the array represent the sides of a  valid triangle
% triangle must be a vector of 3 values

maxSide = max(triangle);
IDXlowValues = find(triangle ~= maxSide);
lowValues = triangle(IDXlowValues);
lowSidesSum = sum(lowValues);

if lowSidesSum > maxSide
    result = 1; %VALID TRIANGLE
else
    result = 0; %NON VALID TRIANGLE
end
end