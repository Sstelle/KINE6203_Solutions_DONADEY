function cash = F4countMyMoney(quarters, dimes, nickels, pennies)
% This fucntion takes 4 inputs as the number of quarters, dimes, nickels, and 
% pennies and returns the total amount of money as a single output 

cash = ((quarters*25) + (dimes*10) + (nickels*5) + (pennies*1)) /100;

end