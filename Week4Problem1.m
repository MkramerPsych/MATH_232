%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment. I also acknowledge working with Sara Aragaki on the week 4 assignments. 



%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 4.1.
% _*Prove or disprove the following statement.*
% If A is a matrix for which A^2 = 0, then at least one
% of the entries of A must be 0._

syms a b c d;
A = [a b; c d];
A_sq = A ^ 2

B = subs(A,d,-a);
B = subs(B,b,-a^2/c);
B = subs(B,c,-a^2/b);
B
B_sq = B ^ 2;

C = subs(B,[a b],[2 6])
C ^ 2
%%
% Consider the matrix [a b; c d] defined above. By squaring the matrix to arrive at A and then factoring, we find b(a+d) = 0 and c(a+d) = 0. Therefore we know d must be equal to -a to end with 0s in those positions (2,1) & (1,2). The remaining two positions are a^2+bc and -a^2+bc. By setting b and c equal to -a^2/b and -a^2/c respectively, we arrive at the matrix B that is [a b; -a^2/b -a] that when squared is the zero matrix regardless of the values of a or b. 




