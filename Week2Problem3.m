%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment. 

% I acknowledge the help of Nate for answering a question about whether or not it is possible for this system to have an inconsistency. 
%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 2.3.
% _Here's a variation on the previous problem. I strongly recommend completing 2.2 first. This time, let's say that B is the augmented matrix of a linear system._

syms b;
B = [1 1 3; 1 (b^2-8) b]
rref(B)

%%
% _*Find a value of b for which this system has exactly one solution. Prove it.* (You can and should use rref() as part of your proof, but I also expect to see a few sentences of writing.)_

C = subs(B,b,-2);
C_rr = rref(C)

% When b = -2, the row reduced augmented matrix has no free variables and no row of the form 0 = 1. Therefore, when b = -2 the system has one solution, x1 = 2, x2 = 1. 

% 
%%
% _*Find a value of b for which the system has no solutions. Prove it.*_

B_c = B(:,1:end-1)
D = subs(B_c,b,-3);
D_rr = rref(D)

E = subs(B,b,-3);
E_rr = rref(E)

% B_c represents the coefficient matrix of the system. Similarly to problem 2.2, selecting b = -3 will result in the coefficient matrix B_c becoming a 2 x 2 matrix of 1s. When that matrix is row reduced, there is only one pivot. Then, when b = -3, the row reduced form of the augmented matrix B row reduces to a form that contains a row 0 = 1. Therefore, when b = -3 the system has no solution. 

% 
%%
% _*Find a value of b for which the system has infinitely many solutions. Prove it.*_

B_c = B(:,1:end-1)
F = subs(B_c,b,3);
F_rr = rref(F)

G = subs(B,b,3);
G_rr = rref(G)

% B_c again represents the coefficient matrix of B. The value b = 3 results in the row reduced form of B_c containining a row of zeros. When substituting that same value into the augmented matrix, the equation becomes x1 + x2 = 3, which has infinitely many solutions. 

% 
%%
% _Follow-up (which won't be graded, but I find it interesting!): for most values of b, the system has exactly one solution. Can you find a whole number b for which the solution uses only whole numbers? Can you find two?_

B_rr = rref(B)

H = subs(B,b,-4);
first_b = rref(H)
I = subs(B,b,-2);
second_b = rref(I)

% Examining the row reduction of B, the value selected should result in both (3b + 8)/(b+3) and 1/(b+3) being whole numbers. The value -4 results in x1 = 4 and x2 = 1. Another value for b (-2) results in x1 = 2 and x2 = 1. 
