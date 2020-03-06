%% Your Name Goes Here
% Replace this with the Honor Code. 

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 5.1.a.
% _It's 2020, right? We have super-powerful computers.
% Why don't we just fit curves exactly? That's a great rhetorical
% question, me! Let's find out._

B = [1 5; 2 5; 3 5; 4 3; 5 4; 6 4; 7 4; 8 2];

%%
% _B is a list of 8 points in R^2. *Show me a scatter plot
% of those 8 points. Explain why B stands for "Beethoven."*_

%%
% _There is a unique degree 7 polynomial that interpolates
% these 8 points, and you're about to find it. *Read this:*
% <https://en.wikipedia.org/wiki/Polynomial_interpolation#Constructing_the_interpolation_polynomial>_

%%
% _You can create a Vandermonde matrix with vander(). 
% *Do that for the first column of B, and call the matrix A.*_

%%
% _*Once you've done that, uncomment the following. Then explain the output.*_

% R = rref([A B(:,2)])
% p = poly2sym(R(:,9))


%%
% _You did it! Now *plot B and p on the same axes; choose reasonable bounds.*_

%%
% _If you did this right, your polynomial should go pretty much exactly
% through the first three or four points and then start to freak out. That's
% intentional; as you've already seen, rref() is awful. Sorry._


%% Problem 5.1.b.
% _Okay, well, we're not going to give up that easily.
% MATLAB is much, much better at inverting matrices than it
% is at rref(), for reasons that we'll see later. This time,
% *find the interpolating polynomial using matrix inversion and
% plot it and the points of B on the same set of axes.* If all goes
% well, your polynomial should hit every point._



%% Problem 5.1.c.
% _Now here's the real problem. Even when MATLAB
% is working perfectly, polynomial interpolation is extremely
% sensitive to "ringing," or what's called Runge's phenomenon.
% ("Runge" is pronounced ROON-geh.)_

syms x;
runge = 1/(1+x^2);
% fplot(runge,[-5,5]); % uncomment this when you're ready

%%
% _By using an appropriate Vandermonde matrix and matrix inversion, 
% *find and plot the interpolating polynomial for runge(x) 
% on the interval [-5,5] using three equally-spaced points.*_

%%
% _*Five points.*_

%%
% _*Eleven points.*_

%%
% _*Twenty-one points.*_

%%
% _The discovery of this example (1901), along with the similar 
% Gibbs phenomenon for Fourier series (1899), was a
% shock to the scientific community at the time. 
% (The phenomenon was actually discovered earlier by physicists, but
% they assumed that it was just measurement error.)
% Designing high-quality interpolations
% that minimize ringing remains a major challenge
% in the field of signal processing._

