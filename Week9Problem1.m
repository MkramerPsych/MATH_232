%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 9.1.
% _Consider the following linear transformations._

T1 = [1 1 1 1; 0 4 3 4; 4 0 1 0].'
T2 = [2 -2 -1 -2; 1 2 0 1].'
T3 = [ 1 0 -4 3; 0 1 0 -1]

%%
% _Let A = Col(T1), B = Col(T2), and C = Nul(T3). *Show me that A, B, and C
% are all 2-dimensional subspaces of R^4 by showing me a basis for each.*_

A = T1(:,1:2)
rref(A)
B = T2
rref(B)
C_prep = rref(horzcat(T3,[0;0]))
C = [4 -3;0 1;1 0;0 1]
rref(C)

%%
% The first two columns of T1 are linearly independent and form a basis for Col(T1). Therefore, Col(T1) is 2 dimensional. Each column of T1 is comprised of 4 elements. By the basis theorem, Col(T1) is a 2 dimensional subspace of R^4. The two columns of T2 are linearly independent and form a basis for Col(T2). Therefore, Col(T2) is 2 dimensional. Each column of T2 is comprised of 4 elements. By the basis theorem, Col(T2) is a 2 dimensional subspace of R^4. To find a basis for Nul(T3), we row reduce the augmented system T3 * x = 0. We hand calculated the parametric vector form and found a general solution of two vectors C. C is comprised of 2 linearly independent vectors with 4 elements each. By the basis theorem, C is a 2 dimensional subspace of R^4.

%%
% _A, B, and C are all isomorphic -- geometrically, they're planes. 
% But are they the same planes? In general, to show that two sets X and
% Y are equal, you have to show that every x in X is in Y, and then show
% that every y in Y is in X. But dimensionality is powerful; here's a
% theorem. If V and W are vector spaces of the same dimension, 
% and {v_1, ..., v_n} is a basis for V, then V = W if
% and only if all of v_1, ..., v_n are in W._

%%
% _Using the above theorem, *show me that A is not equal to B.* Hint: to show
% that something's not in the span of some other stuff, get a pivot in the
% last column._

spantest = [A B];
rref(spantest)

%%
% By creating a matrix spantest from sets A and B, we can test if B is
% contained in span{A}. The resulting row reduced form has a pivot in the
% last column, so the columns of B are not within span{A}. Since the above theorem requires
% each vector in B to be in A, B is not equal to A.

%%
% _*Show that each basis vector for A is in the nullspace of T3.*_

spantest_2 = [A(:,1) C];
spantest_3 = [A(:,2) C];
rref(spantest_2)
rref(spantest_3)


%%
% By creating matrices spantest_2 and spantest_3, we can test each basis
% vector for A in terms of whether or not it is contained in span{C}. As
% both row reduced matrices do NOT have pivots in the last column, both
% basis vectors for A are contained in span{C}. 

%%
% _*Why does this prove that A = C? Explain.*_

%%
% As each basis vector in A is in C and both A and C are vector spaces of
% the same dimension, A must equal C.

%%
% _*Does B = C?* Either do the calculations, or explain why you don't need
% to._

%%
% We do not need to perform this calculation as we already know A = C and A
% does not equal B. Therefore, B does not equal C.