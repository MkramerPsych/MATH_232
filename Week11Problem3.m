%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 11.3.
% _Let's dive deeper into stochastic matrices. *I recommend skimming Lay 5.2 Example 5.*_

%%
% _Cloverlynn College has exactly 3000 students. At the beginning of the
% semester, all of them are using Cloverview on a daily basis.
% However, a group of enterprising CS majors spent their winter terms
% developing Cloviehub, which is pretty much better in every way. Word of
% mouth travels relatively quickly at Cloverlynn: each day, 2% of the
% students who had been using Cloverview switch to Cloviehub; 1% of the
% students who had been using Cloviehub switch back to Cloverview._

%%
% _Let's say that v represents the state vector 
% [Cloverview users on day 0; Clobiehub users on day 0]. *Write v.*_

v = [3000;0];

%%
% On day 1, all 3000 students are using cloverview. 

%%
% _*Write the transition matrix for this stochastic process; call it A.*
% Use A and v to answer the following: *how many students are using
% Cloviehub on day 7?*_

A = [0.98 0.01;0.02 0.99]

A^7 * v

%%
% Multiplying v by A ^ 7 represents the number of students using each service after 7 days. On day 7, 384 students are using cloviehub.

%%
% _*Find the steady state vector for this system; call it b1. 
% In the long run, how many students will be using Cloviehub?*_

setup = A - eye(2);
sys = horzcat(setup, [0;0]);
rref(sys)

gensol = [1/3;2/3];
b1 = A * gensol

%%
% The general solution of the above system is [0.5;1]. This corresponds to the state vector [1/3;2/3]. When the state vector is multiplied by the stochastic matrix, it returns itself. Thererfore, the vector is the steady state vector for the stochastic matrix A. In the long run, 1000 students will use cloverview while 2000 students will use cloviehub.

%%
% _Okay, but that seems to be taking a while! After a week on campus, we're
% nowhere near that number of users. *Make a scatterplot of the number of
% Cloviehub users over the first week.* This may help; uncomment it once
% you've found A and v:_

B = [v A*v A^2*v A^3*v A^4*v A^5*v A^6*v A^7*v]

x = linspace(0,7,8);

hold on;
scatter(x,B(2,:))


%%
% _Okay, so we seem to be moving exponentially toward the steady state.
% Let's try to get an exact formula for that, one that doesn't involve
% taking matrix powers._

b2 = [.5;-.5]

%%
% _*Confirm that b2 is an eigenvector of A; what's the corresponding
% eigenvalue?* Don't worry that b2 isn't a state vector (its second entry
% is negative, and negative probabilities can't happen!); it's just the
% "other" eigenvector for the system._

A * b2

%%
% The above calculation demonstrates that b2 is an eigenvector of A with a
% corresponding eigenvalue of 0.97 

%%
% _*Confirm that B={b1,b2} is a basis for R^2. Write v as a linear
% combination of b1 and b2.* The numbers are clean, I checked._

B = [b1 b2];
rref(B)

sys =[B v [0;0]];
rref(sys)

%%
% B consists of 2 linearly independent vectors of 2 elements each, so it must be a basis for R^2. 
% By row reducing an augmented system of B and v, we find the linear dependence relation v = 3000b1 + 4000b2.

%%
% _*Use your answer to compute the A^7*v "by hand" - that is, without
% telling MATLAB to do 7 matrix multiplications.*_

%A^7 * (3000 * b1) + A^7 * (4000 * b2)
%3000 * A^7 * b1 + 4000 * A^7 * b2
%3000 * b1 + 4000 * A^7 * b2

3000 * b1 + 4000 * (0.97^7) * b2

%%
% The equation above arises from understanding that A * b1 = b1 and A * b2 = 0.97^7 b2 for day 7. Since b1 and b2 are both eigenvectors of A and we know their corresponding eigenvalues, we can cancel A^7 by rewriting the equation in terms of the action on each eigenvector. 

%%
% _*Find a function f(n) which represents the exact number of Cloviehub users on
% each day.* Hint: it will be of the form f(n) = a + b*c^n. *Graph f(n) on
% the same set of axes as your scatterplot to prove that your formula is
% correct.*_

syms n;
f = 3000 * b1(2,:) + 4000 * (0.97^n) * b2(2,:)

fplot(f,[0 8])

%%
% The equation from the last problem gives you the exact number of users of each service on day 7. Varying the day does not affect the action of A on b1, but it does affect the action of A on b2. By substituting n for 7 in the above equation, we can generate the state on any given day. The second element of the resultant vector is the number of cloviehub users on any given day.

%%
% _Pretty darn cool, right? What you've just done is to "decouple a 
% dynamical system" - that is, you wrote it in terms of an eigenbasis,
% which is the same as diagonalizing it. This has major consequences not
% just in applied mathematics but also in number theory:
% <https://en.wikipedia.org/wiki/Fibonacci_number#Matrix_form>. (I did a
% computation very similar to this one in my doctoral thesis.)_