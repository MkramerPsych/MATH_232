%% Max Kramer
% I affirm that I have adhered to the honor code on this assingnment.

%%
% _Hello again, scientist! I'll do all my writing in italics, and problems for you will be in *bold.*
% Comment your code, and_ explain your ideas in plaintext. _As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source. Don't work alone._

%% Problem F.01: Gram the Schmidt.
% _MATLAB will do the Gram-Schmidt process for you if you ask it nicely._

v1 = [-10;2;-6;16;2]; v2 = [13;1;3;-16;1]; 
v3 = [7;-5;13;-2;-5]; v4 = [-11;3;-3;5;-7]; v5 = [1;1;1;1;1];

A = [v1 v2 v3 v4 v5]

%%
% _*Check that Col([v1 v2 v3 v4]) is a 4-dimensional subspace of R^5.*_

B = A(:,1:end-1)
rref(B)

%%
% The column space of the matrix B = [v1 v2 v3 v4] is all of its pivot columns. All of the columns of B are pivot columns, and all of the columns are linearly independent. The column space of an m x n matrix is a subspace of R^m, so the span of the four columns of B are a 4-dimensional subspace of R^5. 

%%
% _*Use Gram-Schmidt to find an orthonormal basis for Span{v1,v2}.* Do this "manually," as in without any
% fancy MATLAB commands. Just matrix multiplication and subtraction for this one, please._

dot(v1,v2) % NOT ORTHOGONAL
vv1 = v1;
vv2 = v2 - ((v2'*vv1)/(vv1' * vv1)) * vv1;
vv2' * vv1 % ORTHOGONAL, BUT NOT ORTHONORMAL
vv1 = vv1/norm(vv1);
vv2 = vv2/norm(vv2);
vv2'*vv1

%%
% The dot product of v1 and v2 is nonzero, so they are not orthogonal. The
% basis is transformed to an orthogonal basis by applying the Gram-Schmidt
% process to v2, creating an orthogonal basis {vv1,vv2}. This is not an
% orthonormal basis as the vectors are not unit length, so a quick division
% by the norm produces the orthonormal basis.

%%
% _Wow that was terrible, right? Check this out._

[Q,R]=qr(A);

%%
% _*Check that Q is orthogonal, R is upper triangular, and Q*R = A.* This
% is called the QR decomposition. It's not useful to know how to construct
% it by hand, but it's extremely useful to know what it is._

Q' * Q
istriu(R)
Q * R
A

%%
% If a matrix is orthogonal, then that matrix multiplied by its own
% transpose should return the identity matrix. The istriu() command tests
% if a matrix is in upper triangular form. Q * R does in fact return the
% matrix A. 

%%
% _Cool, so how does this have anything to do with Gram-Schmidt?_

A*R^(-1) % since Q*R = A, Q = A*R^(-1)

%%
% _Well hey! If you did your Gram-Schmidt correctly above, the columns you
% got should be the same as the first two columns of this. That means that
% the columns of R^(-1) are actually exactly the Gram-Schmidt information!_

R^(-1)

%%
% _*Use R^(-1) to write down a linear combination of v1, v2, v3, and v4 that produces an
% orthonormal vector which is orthogonal to v1, v2, and v3. Check your answer.*_

Rinv = R^(-1);
lincombo = A * Rinv(:,4)
norm(lincombo)
lincombo' * v1
lincombo' * v2
lincombo' * v3

%%
% The columns of R^(-1) represent linear combinations of v1 through v5 that produce orthonormal vectors that are orthogonal to a set of the vectors v1 through v5. To find a combination that produces a vector orthogonal to v1 through v3, we multiply the original matrix A (the columns v1 through v5) by the 4th column of R^(-1). The resultant linear combination is 0.7071 * v2 - 0.7071 * v5. The norm of the resulting vector is 1 and the dot product of the vector and v1 through v3 is 0. 