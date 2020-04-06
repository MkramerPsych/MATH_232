%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 6.3.
% _The Wronskian is kind of a special little trick; the following method is
% a much more general and powerful method for checking linear independence
% in function space._

syms t;  
a1 = 1; a2 = t; a3 = t^2;
A = double(subs([a1 a2 a3],t,[1;2;3]))

%%
% _What I've done here is to evaluate the vectors 1, t, t^2 at the points
% 1, 2, 3. This is called an alternant matrix: <https://en.wikipedia.org/wiki/Alternant_matrix>. 
% *I strongly recommend skimming that article.* 
% Note: there's nothing special about 1, 2, 3. More on that in a bit. The
% idea here is the same as the Wronskian: if two functions are linearly
% dependent, then they satisfy the same linear dependence at every input.
% The alternant probes the functions at different values._

det(A)

%%
% _Since det(A) is not 0, A is invertible. That means the columns of A are
% linearly independent, which proves that {1,t,t^2} is linearly
% independent! Cool, right?_

%%
% _Okay, so first let's go back to what I was saying about 1,2,3 not being
% special._

b1 = t^2 - 3*t + 2;
b2 = t^3 - 3*t^2 + 2*t;

B = double(subs([b1 b2],t,[1;2]))

%%
% _The rank of B is 0, but b1 and b2 are linearly independent. *Prove
% that.* (Try some different numbers.)_

B_new = double(subs([b1 b2],t,[3;4]));
det(B_new)

%%
% B_new is an alternant matrix that evaluates b1 and b2 at 3 & 4 rather than 1 & 2. B_new is row equivalent to the identity matrix in R^2 and therefore is rank 0. The determinant of this matrix is nonzero, so the columns of B_new are linearly independent. Therefore, b1 & b2 are linearly independent. 

%%
% _It's way more interesting when functions are linearly dependent._

c1 = sin(t)^2;
c2 = cos(t)^2;
c3 = 1;

C = double(subs([c1 c2 c3],t,[1;2;3]))
det(C) % this is close enough to 0 to be round-off error
rref(C)

%%
% _*Use the above computation to write c3 as a linear combination of c1 and c2. What trigonometric
% identity have you just rediscovered?*_

%%
% c3 = c2 + c1. We have rediscovered the trigonometric identiy sin^2 + cos^2 = 1.

%%
% _Okay but that's super-boring, right? Let's do some real heavy calculus.
% (By which I mean that we're about to destroy pretty much every difficult
% integral in Calculus II.)_

f = cos(t)^4;

%%
% _Finding the integral of f is an absolute nightmare in Calc II:
% you have to use the power-reduction formula, foil, then use the
% power-reduction formula again! That's atrocious. Let's cheat._

d0 = 1;
d1 = cos(t);
d2 = cos(2*t);
d3 = cos(3*t);
d4 = cos(4*t);

%%
% _*Prove that {d0, d1, d2, d3, d4} are linearly independent.*_

D = double(subs([d0 d1 d2 d3 d4],t,[1;2;3;4;5]))
det(D)

%%
% The matrix D is the alternant matrix of d0...d4 evaluated at 1,2,3,4, and 5. The determinant of D is nonzero, so the columns of D are linearly independent. Therefore, d0...d4 are linearly independent.

%%
% _*Prove that f is in the span of {d0, ... ,d4}. Write f as a linear
% combination of d0, ... d4.*_

spantest = double(subs([d0 d1 d2 d3 d4 f],t,[1;2;3;4;5]))
rref(spantest)

%%
% The matrix spantest is an augmented matrix of d0...d4 and f. The row reduced form of the system is consistent, so f is in the span of {d0...d4}. F can be written as (0.375 * d0) + (0.5 * d2) + (0.125 * d4). This is equivalent to (0.375 * 1) + (0.5 * cos(2*x)) + (0.375 * cos(4*x)).

%%
% _*Using your answer, integrate f by hand.* It should be easy now, no trig
% required._

%%
% The resulting integral is equal to (sin(4x) + 8 sin(2x) + 12x) / 32.


%%
% _That was probably just a fluke, right?_

g = (t^4 - 2*t^3 + 4)/(t-1)^2;

h0 = 1;
h1 = t; 
h2 = t^2;
h3 = 1/(t-1);
h4 = 1/(t-1)^2;

%%
% _*Repeat for g and {h0, ... , h4}.* You've just reinvented
% partial fractions. Boom._

E = double(subs([h0 h1 h2 h3 h4],t,[2;3;4;5;6]));
det(E)

spantest_2 = double(subs([h0 h1 h2 h3 h4 g],t,[2;3;4;5;6]))
rref(spantest_2)

%%
% The matrix E is the alternant matrix of h0...h4 evaluated at 2,3,4,5, and 6. The determinant of E is nonzero, so the columns of E are linearly independent. Therefore, h0...h4 are linearly independent. The second computation creates a matrix spantest_2 that is an augmented system of h0...h4 and g. The row reduced form of this matrix results in g being expressed as (-1 * h0) + (1 * h2) + (-2 * h3) + (3 * h4), which is equivalent to (-1) + (t^2) + (-2 * (1/(t-1))) + (3 * (1/(t-1)^2)). The resulting integral is equal to (x^3/3) - x - (3/(x-1)) - 2 * ln(abs(x-1)).





