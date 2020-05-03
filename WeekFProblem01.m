%% Your Name Goes Here
% Replace this with the Honor Code. Now is a very good time to reread the syllabus.

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

%%
% _*Use Gram-Schmidt to find an orthonormal basis for Span{v1,v2}.* Do this "manually," as in without any
% fancy MATLAB commands. Just matrix multiplication and subtraction for this one, please._

%%
% _Wow that was terrible, right? Check this out._

[Q,R]=qr(A);

%%
% _*Check that Q is orthogonal, R is upper triangular, and Q*R = A.* This
% is called the QR decomposition. It's not useful to know how to construct
% it by hand, but it's extremely useful to know what it is._

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