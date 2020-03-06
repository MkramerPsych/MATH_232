%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 2.2.
% _Unfortunately, MATLAB is often extremely bad at working with symbolic variables. Consider
% the following matrix._

syms a;
A = [1 a; a a+2]
rref(A)

%%
% _*Based on the above result, how many pivots does A have?*_

%%
% Based on the above results, A appears to have 2 pivots as the row reduced form of A contains two pivots. 

%%
% _*Why does this prove that the above answer is wrong?*_

B=subs(A,a,2)
rref(B)

%%
% By substituting in a value for a in the matrix A, the row reduced form of B only contains 1 pivot. 

%%
% _Okay fine, I'll just row-reduce it by hand._

C = A;
C(2,:) = C(2,:) - a*C(1,:)

%%
% _*Explain what I just did. Then use the output to give a better answer
% to the question: how many pivots does A have?*
% (Your answer will depend on a.)_

%%
% The first step was copying the matrix A to a new matrix C. Then, a row operation was performed in which the 2nd row was replaced by itself plus -a * the 1st row. If a value for a is selected that results in -a^2+a+2 is zero (a=2,a=-1), then there is only one pivot. If an a is selected that causes -a^2+a+2 to be nonzero, than the matrix A has two pivots. 
