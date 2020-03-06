%% Max Kramer
% I affirm I have adhered to the honor code on this assignment.

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 2.1.
% _To do any real scientific work in MATLAB, you have to be able to import data. The file 
% HM.csv is an example of a matrix saved as a text file. Put it in the same folder as this .m
% file._


%%
% _*Import the data as HM. Use a semicolon*; HM stands for "huge matrix."_
HM = csvread('HM.csv');

%%
% The csvread() function takes a csv file in the current working directory and imports it into MATLAB as a matrix.

%%
% _HM is the augmented matrix of a system. *How many equations and variables
% does the system have?*_

%%

size(HM)
%%
% The size(HM) command returns 100 x 100. With 100 rows and 100 columns and the knowledge that HM is an augmented matrix, we can claim that there are 100 equations and 99 variables plus the 1 forcing vector.
%%
% _*Row-reduce HM. Show me the 5x5 lower right-hand corner.*_

HM_rr = rref(HM);
HM_rr(end-4:end,end-4:end)

%%
% After using rref() to row reduce the matrix HM, slicing the result from the 4th to last row to the last row and the 4th to last column to last column produces the last 5 rows and columns as a result.

%%
% _Is HM consistent? If so, is the solution unique? *Explain.*_

%%
% The Matrix HM is consistent, as the row reduced form of HM does not have any rows of the form 0 = b where b is nonzero. The solution is not unique as there is a free variable x_99. 


