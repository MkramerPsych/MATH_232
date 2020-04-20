%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 11.1.
% _MATLAB is fantastic at computing eigenvectors, but it's good to do it
% by hand... once. Here's a matrix:_

B = [2 -1 -1; 1 4 1; 1 1 4]
syms lambda;

%%
% _*Using the command det(), find the characteristic polynomial of B.*
% There's a charpoly() command; please don't use it on this one._

char_poly = det(B - lambda * eye(3))

%%
% The above command calculates det(B - lambda * I). The scalar equation det(B - lambda * I) = 0 is the characteristic polynomial of B.

%%
% _*Using the command factor(), find the eigenvalues of B.*_

factor(char_poly)

%%
% _Your results should match this one._
eig(B)

%%
% _Without doing any more calculations, *is
% invertible? Explain.* (Is 0 an eigenvalue? Why is that relevant?)_

%%
% The invertible matrix theorem states that an n x n matrix for which 0 is NOT an eigenvalue is invertible. As 0 is NOT an eigenvalue of the matrix, A is invertible. 

%%
% _Without doing any more calculations, *what are the possible dimensions of
% the 4-eigenspace?*_

%%
% As the eigenvalue 4 has multiplicity 1, the dimension of the 4-eigenspace must be less than or equal to 1.

%%
% _*Find a basis for the 4-eigenspace.* Here's a start:_

K = B-4*eye(3);
sys = horzcat(K,[0;0;0]);
rref(sys)


%%
% The general solution to the above problem is [-1;1;1] which is an eigenvector corresponding to the eigenvalue 4. 

%%
% _*Check that the vector(s) you found in the previous part are actually
% eigenvectors with eigenvalue 4 by multiplying them by B.*_

eigenv = [-1;1;1];
B * eigenv

%%
% The above computation demonstrates that eigenv multiplied by B is 4 * eigenv, so v is an eigenvector corresponding to eigenvalue 4.

%%
% _*Without doing any more calculations, what are the possible dimensions of
% the 3-eigenspace?*_

%%
% As the eigenvalue 3 has multiplicity 2, the dimension of the 3-eigenspace must be less than or equal to 2.

%%
% _*Find a basis for the 3-eigenspace. Does R^3 have a basis of eigenvectors for B?*_

L = B-3*eye(3);
sys2 = horzcat(L,[0;0;0]);
rref(sys2)

eigenv1 = [-1;0;1];
eigenv2 = [-1;1;0];

B * eigenv1
B * eigenv2

%%
% The above computation demonstrates that the equation (A-3I) = 0 has a general solution with the vectors [-1;0;1] and [-1;1;0]. These vectors multiplied by B produce 3 times the vectors. This demonstrates that these vectors are eigenvectors corresponding to an eigenvalue of 3. There are three linearly independent vectors betwen the eigenvectors for the 3-eigenspace and 4-eigenspace, so R^3 does have a basis of eigenvectors for B. 

%%
% _The eig() command is weird. It's overloaded, meaning it does different
% things depending on how you call it. Check it out._
[V,D] = eig(B)

%%
% _If you did everything right, the 4-eigenspace should be pretty clearly
% the same as the one you found, but the 3-eigenspace will look a bit odd.
% That's because MATLAB uses a greedy algorithm to compute
% eigenvectors; the first one it finds is usually pretty clear, but they
% tend to get weirder._