%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment.

%%
% _Hello again, scientist! I'll do all my writing in italics, and problems for you will be in *bold.*
% Comment your code, and_ explain your ideas in plaintext. _As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source. Don't work alone._

%% Problem 10.2.
% _*Do Lay 4.9 Exercises 4 and 14.*_

%% Problem 4.9.4
% Part A

sto = [0.6 0.3 0.1; 0.4 0.3 0.3; 0.4 0.5 0.1]'

%%
% The matrix sto is the representation of the stochastic matrix for problem 4. 

%%
% Part B

today = [0.5;0.5;0];
tomorrow = sto * today

%% 
% The vector tomorrow represents the probabilities of each outcome for tomorrow's weather. There is a 20% chance of bad weather tomorrow given the initial conditions.

%%
% Part C

monday = [0;0.4;0.6];
tuesday = sto * monday;
wednesday = sto * tuesday

%%
% The vector Wednesday represents the probabilities of each outcome for Wednesday's weather. There is a 48% chance of good weather on Wednesday given the initial conditions.

%% Problem 4.9.14
% 

step1 = sto - eye(3);
step2 = horzcat(step1,[0;0;0]);
rref(step2)
gen_sol = [3/6;2/6;1/6];
sto * gen_sol;

%%
% The vector gen_sol is the general solution of the matrix step2, found by subtracting the identity matrix in R^3 from the stochastic matrix. The vector multiplied by the stochastic matrix returns the same vector as it is the steady state vector for this stochastic matrix. On any given day in Columbus, there is a 50% chance for good weather.
