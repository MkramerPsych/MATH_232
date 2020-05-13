%% Max Kramer
% I affirm that I have adhered to the honor code on this assingment

%%
% _Hello again, scientist! I'll do all my writing in italics, and problems for you will be in *bold.*
% Comment your code, and_ explain your ideas in plaintext. _As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source. Don't work alone._

%% Problem F.03: Kill the noise.
% _*This problem assumes that you have completed most of F.02.*
% Here's another cool thing we can do with linear regression. We often
% have a complex signal with some annoying periodic behavior that we want
% to remove._

L = [0:.001:1.999]';
analog = csvread('analog.csv');
figure;
plot(L,analog)

%%
% _The issue here, well-known to any of you who play electric instruments,
% is that this signal has a "mains hum." In America, the power line
% frequency is 60 Hz. What you're looking at is an electrical signal
% sampled at 1000 Hz; we want to remove the buzz. Let's start by zooming in
% to the first 1/10 second to mostly isolate the noise._

A = L(1:100); B = analog(1:100); B = B-mean(B); plot(A,B)

%%
% _*Find the period of the hum, then set k = 2*pi/period.*_

k = 2*pi/(1/60)

%%
% The hum occurs at 60hz, so the period of the hum is 1/60. 

%%
% _*Find the function f(x) = a*cos(k*x) + b*sin(k*x) that best fits the
% data [A B]. Plot it on the same axes as [A B] to confirm that it's a good
% fit.* If you find these instructions confusing, that's okay. Look at Lay
% 6.6 Exercise 9 for inspiration; it's odd, so there's an answer in the
% back._

data = [A B];
inputs = data(:,1); outputs = data(:,2);
syms x;

functioncoskx = cos(k*x);
functionsinkx = sin(k*x);

X = [subs(functioncoskx,x,inputs) subs(functionsinkx,x,inputs)]; 

Xtx = X' * X;
Xty = X' * outputs;

b = Xtx^(-1) * Xty;

f = [cos(k*x) sin(k*x)]*b;

figure;
scatter(data(:,1),data(:,2))
hold on
fplot(f, [0 0.1])

%%
% The functions cos(kx) and sin(kx) are represented as symbols. A standard
% regression run on [A B] generates a vector b that contains the
% coefficients on cos(kx) and sin(kx) that best fits the function to the
% data. 

%%
% _*Create a new signal S by subtracting f(L) from analog, then plot L
% against S.* If everything's gone right, you should have gotten rid of at
% least 80% of the hum. Not bad. (We could do better with Fourier
% transforms, but that's another topic for another course.)_

fL = subs(f,x,L);

S = analog - fL;

figure;
plot(L,S)

%%
% The function f(L) is created by using the subs command to evaluate the
% function found previously for L. The resulting signal is subtracted from
% analog to get S. L is then plotted against S in the graph below. 
% It appears that the majority of the noise is gone. 

