%% Your Name Goes Here
% Replace this with the Honor Code. 

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 5.3.
% _First, *let Q be a 3x3 matrix whose entries are randomly drawn from the
% one-digit numbers 0-9. Show me Q and det(Q).*
% Note: your output should be different every time you publish your m file._


%%
% _*Uncomment the following code and explain what property of determinants
% is being demonstrated with each example.*_

% det(2*Q)

% det(Q^2)

% det(Q^(-1))

% det(Q.')

% R = [2 0 0; 0 1 0; 0 0 3]; det(R*Q)

% S = Q; S(1,:) = S(1,:)+S(2,:); det(S)


%%
% _There's actually a small chance that one of the above will throw an
% error when you uncomment it. *Which one, and why?*_

%%
% _Well yeah okay, but what are the chances of that? *Put abunchofdets.m in
% the same path as this m file and use it to generate the determinants of
% 10^4 random 3x3 matrices.* Use a dang semicolon._

% help abunchofdets % this'll show you how to use abunchofdets()

%%
% _*Show me a histogram of the output.*_

%%
% _*How many of these 10^4 matrices are not invertible? What's that as a
% percentage of the total?*_

%%
% _*Of the matrices that you found, what's the largest determinant?*_




%%
% _Bonus! CS majors take note, but this isn't part of the problem. 
% rng(seed), where seed is a number between 1 and 2^32, makes the
% random number generator return a repeatable output. Uncomment the following code,
% then change n around until you find a value
% that makes L as large as you can get it. Because there's absolutely no way to
% shortcut this other than brute force, this is a good example of what's called a
% 'proof of work' task. You're basically mining cryptocurrency, except that you
% can't sell it. But I'll bring candy or balloons or something if anyone
% finds an n that gives L = 1458._

% n=10;
% rng(n)
% L = abunchofdets(3,1)
