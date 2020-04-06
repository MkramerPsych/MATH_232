%% Max Kramer
% I affirm that I have adhered to the honor code on this assingment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 6.1.
% _This week's MATLAB problems are all about getting used to function space.
% Unlike with vectors in R^n, where it's usually easy to see if two vectors
% are the same, two functions are equal iff they evaluate to the same
% output for every input. So there's potentially infinitely many places for
% things to go wrong._

%%
% _Let's start with sets of two vectors in function space. Theorem 4 in
% Lay's Chapter 4 says the same thing for these as for vectors in R^n: two
% functions are linearly dependent if and only if one is a multiple of the
% other._

syms x;
f = x+1;
g = 3*x+3; % for example!

%%
% _But here's the thing: that multiple needs to be exactly the same for
% every real value of x (assuming that these are functions from R to R).
% Consider!_

h = 2*x+4;
A = [f;h];
subs(A,x,0)
subs(A,x,1)

%%
% _*Explain why the above computation proves that f(x) and h(x) are
% linearly independent.*_

%%
% When x = 0, the value of f(0) = 1 and h(0) = 4. When x = 1, f(1) = 2 and h(1) = 6. The ratio of 1 to 4 is not the same as 2 to 6, so the multiple relating f(x) to h(x) is NOT the same at every real value of x. Therefore, f(x) and h(x) are linearly independent. 


%%
% _*Prove that the following pairs of functions are linearly independent.*_

a = x;
b = x^2;

B = [a;b];
subs(B,x,2)
subs(B,x,3)

%%
% The ratio of 2 to 4 is not the same as 3 to 9, so the multiple relating a(x) to b(x) is NOT the same at every real value of x. Therefore, a(x) and b(x) are linearly independent.

%%
%

c = x;
d = abs(x);

C = [c;d];
subs(C,x,1)
subs(C,x,-1)

%%
% The ratio of 1 to 1 is not the same as -1 to 1, so the multiple relating c(x) to d(x) is NOT the same at every real value of x. Therefore, c(x) and d(x) are linearly independent.

%%
%

k = heaviside(x-3.43);
l = heaviside(x-3.44);

D = [k;l];
subs(D,x,3.43)
subs(D,x,4)

%%
% The ratio of 1/2 to 0 is not the same as 1 to 1, so the multiple relating k(x) and l(x) is NOT the same at every real value of x. Therefore, k(x) and l(x) are linearly independent.
