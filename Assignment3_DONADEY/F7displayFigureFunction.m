function graph = F7displayFigureFunction(vec1,vec2)
% This function takes TWO vectors (several values) and plot their values (lines)
% on the same graph

graph = figure(1);
plot(vec1, 'x-.b')
title('Visualizing of Data');
xlabel('Time (s) (?)');
ylabel('Vectors');
hold on
plot(vec2, 'd-k')

end