%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment

%%
% _Hello again, scientist! I'll do all my writing in italics, and problems for you will be in *bold.*
% Comment your code, and_ explain your ideas in plaintext. _As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source. Don't work alone._

%% Problem F.05: Fit the triangle.
% Here's a triangle with center of mass at the origin:

T = [-2 -1; 1 -1; 1 2];
figure;
scatter(T(:,1),T(:,2),'filled')
axis([-3 2 -2 3])

%%
% _There are three fundamentally different "lines of best fit" to T._

%%
% _*Fit a function of the form y = ax+b to the data T.* What, exactly, does
% this line of best fit minimize? *Explain.*_

syms x;
functionone = 1;
functionx = x; 

inputs = T(:,1); outputs = T(:,2);
X = [subs(functionone,x,inputs) subs(functionx,x,inputs)];

Xtx = X' * X;
Xty = X' * outputs;

b = Xtx^(-1) * Xty;
f = [1 x]*b;

figure;
scatter(T(:,1),T(:,2))
hold on
fplot(f,[-2 1])

%%
% This function minimizes the squared differences between the predicted and
% observed values of the DEPENDENT variable.

%%
% _*Fit a function of the form x = ay+b to the data T.* Your answer will be
% different than the previous one! What, exactly, does
% this line of best fit minimize? *Explain.*_

syms y;
functiony = y;

inputs2 = T(:,2); outputs2 = T(:,1);
Y = [subs(functionone,y,inputs2) subs(functiony,y,inputs2)]


Yty = Y' * Y;
Ytx = Y' * outputs2;
 
b2 = Yty^(-1) * Ytx;
f2 = [1 y]*b2;
 
figure;
scatter(T(:,1),T(:,2))
hold on
fplot(f2, [-2 1])

%%
% This function minimizes the squared differences between the predicted and
% observed values of the INDEPENDENT variable.

%%
% _*Use the SVD to project T onto the closest rank-1 matrix.* (That is, find
% the SVD, set all but the largest singular value to 0, then remultiply.) 
% What, exactly, does this line of best fit minimize? *Explain.* (This
% method is called "total least squares" regression; it's also called "Deming regression" in chemistry.
% With the other two methods you're trying to predict an unknown variable in terms of a known
% one; total least squares is more exploratory.)_

[U,S,V] = svd(T);
S(2,2) = 0;
T2 = U*S*V;
rank(T2)

inputs3 = T2(:,1); outputs = T2(:,2);
X3 = [subs(functionone,x,inputs) subs(functionx,x,inputs)];

Xtx3 = X3' * X3;
Xty3 = X3' * outputs;

b3 = Xtx3^(-1) * Xty3;
f3 = [1 x]*b3;

figure;
scatter(T(:,1),T(:,2))
hold on
fplot(f3,[-2 1])

%%
% This function minimizes the squared differences between the predicted and
% observed values of the BOTH THE INDEPENDENT AND DEPENDENT variables.

%%
% _*Plot T, and your three lines of best fit, on the same axes.*_

figure;
scatter(T(:,1),T(:,2))
hold on 
fplot(f,[-2 1])
fplot(f2, [-2 1])
fplot(f3, [-2 1])
