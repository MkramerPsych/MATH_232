%% Max Kramer
% I affirm that I have adhered to the honor code on this assingment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 6.2.
% _Here's another nice trick. If a set of differentiable functions is
% linearly dependent, then the derivatives of those functions satisfy the
% same linear dependency (because differentiation is a linear function!)._

syms x;
f = x;
g = x^2
A = [f g];
W = [A; diff(A)]
det(W)

%%
% _Since the determinant of W is not always 0 (it's 0 at 0, but it's not
% the zero function, because when you plug in x=1 you don't get 0!), the matrix W is invertible, so its columns are
% linearly independent, which means that the functions f and g are linearly
% independent. The function det(W) is called the Wronskian, which is a
% shame because Wronski was not a great person._

%%
% _*Prove that the following set of functions is linearly independent.* 
% You'll need to set up a 4x4 Wronskian for this one:
% <https://en.wikipedia.org/wiki/Wronskian>.
% (If you've taken discrete, it's not a huge leap to imagine that you could use
% a proof by induction to show that {1, x, ... , x^n} is linearly
% independent. That's not part of the problem though.)_

a = 1; % this is the function a(x) = 1, not the number 1
b = x; c = x^2; d = x^3;

B = [a,b,c,d];
W_2 = [B; diff(B); diff(B,2);diff(B,3)];
det(W_2)

%%
% The determinant of the 4 x 4 Wronskian W_2 is 12. As this is not 0, the matrix W_2 is invertible,
% so its columns are linearly independent. Therefore, the functions a(x), b(x), c(x), and d(x)
% are linearly independent.

%%
% _In the late 1800s, when the first modern analysis books were being
% written, it was regularly claimed by some really smart people that if the
% Wronskian of two functions was the zero function then the functions must
% be linearly dependent. Peano (1899) proved that this was wrong:_

f = x^2; g = x*abs(x);

%%
% _*Prove that the Wronskian of {f,g} is the 0 function. Prove that {f,g}
% is linearly independent.*_

C = [f,g];
W_3 = [C;diff(C)];
det(W_3);
subs(det(W_3),x,0)
subs(det(W_3),x,1)

D = [f;g];
subs(D,x,-2)
subs(D,x,2)

%%
% The determinant of the 2 x 2 Wronskian W_3 is 0. However, when substituting for x in the matrix D,
% the ratio of 4  to -4 is not the same as 4 to 4, so the multiple relating f(x) to g(x) is NOT the same
% for all real values of x. Therefore, f(x) and g(x) are linearly independent.

%%
% _Not part of the problem, but a nice follow-up: you can use the Wronskian
% to show that if {a_1, ... , a_n} is a set of n distinct real numbers,
% then the functions {(a_1)^x, ... (a_n)^x}. Proof outline: compute the
% Wronskian matrix, plug in x=0, recognize that this is the transpose of a
% matrix you've seen in a previous MATLAB assignment._