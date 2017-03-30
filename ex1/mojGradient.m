clear all; clc
data = load('ex1data1.txt');
X = data(:,1);
y = data(:,2);
m = length(y);



    figure(1);
        plot(X,y, 'rx');
X = [ones(m,1), X];

alpha = 0.01;
theta = zeros(2,1);
iterations = 10;

for i=1:iterations
    theta = theta - alpha*X'*(X*theta - y)/m;
    figure(2)
        plot(X(:,2), X*theta);
    
    pause(0.5);
end;
    
    
    
    
    
    