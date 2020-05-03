%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 10.1.
% _You can write a linear transformation with respect to whatever set of
% bases you want, but some bases are better than others. Check it out._

A = [0 3 -6 6 4 -5; 3 -7 8 -5 8 9; 3 -9 12 -9 6 15];
size(A)
rank(A)

%%
% _As a linear map, A takes R^6 (in the standard basis) onto R^3 (in the standard basis). 
% That means that Col(A) is a basis
% for R^3. Lay Chapter 6 Theorem 4 says that the pivot columns of A form a
% basis for R^3. *Find that basis, and call it B = [b1 b2 b3].*_

rref(A)
B = A(:,[1 2 5])

%%
% The pivot columns of A are 1, 2, and 5. The above command creates a matrix B from the 1st, 2nd, and 5th columns of A. 


%%
% _*Show me the matrix C which represents the transformation A as a map 
% from R^6 (in the standard basis) to R^3 in the B basis.* Here's a good 
% way to do that: compose the matrix A with an appropriate change of
% basis._

C = B \ A
rref(A)

%%
% The matrix C is a linear map from R^6 to R^3 created by composing the matrix A with the inverse of the change of basis matrix from the B basis to the standard basis. The result is a linear map from R^6 in the standard basis to R^3 in the B basis. 
%%
% _If you did the previous part right, then C = rref(A). (Wait, what!?!?!)
% Actually, that's what row reduction is: it's a change of basis of the
% codomain. This is why row reduction can (and often will) change Col(A), 
% but it doesn't change Row(A) or Null(A): those live in the domain, and
% the basis for the domain hasn't changed._

%%
% _Here's one more._

K = [1 2 3 4; 4 5 6 7; 6 7 8 9]

%%
% _*Find a basis M = [m1 m2 m3] for which L=rref(K) is the coordinate matrix
% for K, where K takes the standard basis of R^4 to the standard basis of
% R^3 and L takes the standard basis of R^4 to the M-basis of R^3.*_
 
M = horzcat(K(:,[1 2]),[5;7;4])
rref(M)
L = M \ K
rref(K)

%%
% The matrix M is created by combining 2 vectors in Col(K) with a third linearly independent vector m3, testing by row reducing the resulting matrix. The columns of the matrix are linearly independent. Therefore, the set {m1,m2,m3} is a set of three linearly independent vectors with 3 elements each, forming the M basis for R^3. When the inverse of M is multiplied by K, the resultant matrix L is row equivalent to rref(K). 
