%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 11.2.
% _Here's another matrix._

F = [1 1; 1 0]

%%
% _And here's its characteristic polynomial._
syms x;
poly = charpoly(F,x)

%% 
% _*Compute the exact eigenvalues of F.* (Quadratic formula.)_

solve(poly)

%%
% The exact eigenvalues of F are (1-sqrt(5))/2 and (1+sqrt(5))/2. 


%%
% _We're going to find the largest one, which also happens to be the golden
% ratio, using what's called the "power method." The eig() command is
% really just a fancier version of this. Start with a random vector, like this one._

v = [1;1];

%%
% _Divide by its length so it has length 1. (The length of a vector is
% called its "norm." More on that next week.)_

v = v/norm(v)

%%
% _The power method is really simple: *start with a norm 1 vector, multiply
% by F, divide by the length so it has norm 1 again, and repeat. Do that
% until you get the same vector twice in a row.* (You may want to write a loop.)_

vec_i = v;

for i = 1:10
    if i == 1
        vec_prev = vec_i;
    end
    vec = F * vec_prev;
    vec = vec/norm(vec);
    if vec == vec_prev
        break
    end
    vec_prev = vec;
end

%%
% The loop structure above begins with the vector v. On each run through the loop, the vector is multiplied by the matrix F and then divided by its norm to get the vector with a norm of 1. The code then checks if the length 1 vector is the same as the length 1 vector seen in the last iteration, and ends the loop if so. 

%%
% _Congratulations, you've found an eigenvector! And because it has norm
% 1, its associated eigenvalue will be the norm of the vector after
% multiplying by F. *Do that.* If everything's gone right, you should get the
% golden ratio._

eigenv = F * vec;
norm(eigenv)

%%
% multiplying the resultant vector by F and then taking the norm results in the golden ratio.

%%
% _If you've taken discrete, you should seriously consider doing this: 
% prove that the first column of F^n is given by [f{n+1}; f{n}],
% where f{n} is the nth Fibonacci number. (Since a linear transformation is
% determined by its action on a basis, and we know that F^n*[1;0] is
% approximately an eigenvector of eigenvalue equal to the golden ratio,
% this proves that f{n+1}/f{n} is approximately equal to the golden ratio.)_
