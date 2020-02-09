%% Week 1 Problem 1. (In Which Steve Tries To Be Neat With Their MATLAB Homework.)
%%
% Steve Balady

%%
% February 7, 2020

%%
% I have adhered to the Honor Code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 1.1.
% _*Publish this .m file to a pdf and upload it to Gradescope properly.*_

%% Problem 1.1a.
% _I don't understand the rref command. Give me an example that
% I can copy for my MATLAB homework._

% doc rref

%%
% Run that (without the %) from the command window and scroll down to "Examples."
% Alternately, Google "matlab rref." That's what I always do.

A=[1 2 0; -1 -2 0]
B=rref(A)

%%
% Based on this computation, we can see that the first column of A is a pivot column; the second and third are not.
% If A is an augmented matrix, this means that the associated system has _infinitely many_
% solutions.

%%
% Acknowledgments: I worked alone on this problem, but I did use the 
% following webpage for help: 
% <https://www.mathworks.com/help/matlab/ref/rref.html MATLAB rref>.
% (No, you don't have to be this formal with everything you do. I just want
% you to know how to cite your sources. When you work with a group or use a website 
% in a serious way, it's a matter of academic honesty for you to tell me.)



%% Problem 1.1b.
% _Why are semicolons important?_

[T,Y]=meshgrid(-20:1:20, 0:1:40);

%%
% Remove the semicolon and publish it. That's why. I reserve the right not
% to read your MATLAB homework if you give me ten pages of matrix entries.








