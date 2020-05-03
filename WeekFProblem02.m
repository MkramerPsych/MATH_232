%% Your Name Goes Here
% Replace this with the Honor Code. Now is a very good time to reread the syllabus.

%%
% _Hello again, scientist! I'll do all my writing in italics, and problems for you will be in *bold.*
% Comment your code, and_ explain your ideas in plaintext. _As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source. Don't work alone._

%% Problem F.02: Find the function.
% _*Import the file data1.csv as data1. Use a semicolon.*_

data1 = csvread("data1.csv");

%%
% _data1 represents the x-y
% coordinates of some unknown function. *Show me a scatterplot of data1.*_

%%
% _Looks linear, huh? Let's find the ordinary line of best fit.
% I'll walk you through this one. When you're ready, *uncomment the following.*_

% inputs = data1(:,1); outputs = data1(:,2);
% syms x;
% functionone = 1; % this is silly, but I'm thinking of this as the function y=1
% functionx = x % same deal, this is the function y = x
% X = [subs(functionone,x,inputs) subs(functionx,x,inputs)]; % a linear transformation is determined...

%%
% _You're trying to best-fit the equation X*b = outputs. *Set up the normal
% equations as in Lay 6.6, and solve for b.*_

%%
% _Then *uncomment the following* to find "the" line of best fit; that is,
% the line that best approximates y as a function of x._

% f1 = [1 x]*b

%%
% _*Plot data1 and f1 on the same set of axes.*_



%% 
% _Cool, right? Let's move on. *Import data2 and plot it.*_

%%
% _*Find the ordinary line of best fit. Explain why it is bad.*_

%%
% _Okay it turns out that data2 is pretty close to some exponential
% function, y = a*b^x. Unfortunately this isn't linear. But y'know what is?
% log(y) = x*log(b) + a. So let's find that._

%%
% _*Plot the first column against the log of the second column.* 
% This is called a semi-log plot. (It's common
% in biostatistics, where exponential growth is the norm.)_

%%
% _Sweet. *Do linear regression on that.*_

%%
% _Using your linear regression, *find a curve f2 that closely
% follows data2. Plot data2 and f2 on the same axes.*_

%%
% _While this might look pretty good, using a linear fit to model
% exponential growth is often dangerously misleading. *Show me a
% scatterplot of data2's inputs against the residual error.* 
% If you've done this right, the residuals should get worse over time.
% This is because a log scale compresses large y-values into a much smaller
% range than they actually are, so small errors on a log plot
% correspond to massive real-world prediction errors. (This is why infectious disease
% models have such huge error bars; they're trying their best to predict
% the exponential future. The difference between 100K and 1M is only a
% difference of 1 on a log_10 scale.)_

%% 
% _*Import data3 and have a look at it. Verify that data3 doesn't fit
% either a linear or an exponential model particularly well.*_

%%
% _In fact data3 is pulled from a polynomial of degree *n* for some number
% *n*. But what's *n*? Well, if you have a function y=a*x^n and you
% take log of BOTH sides, you get log(y) = n*log(x)+log(a). When x is
% really big, the lower-order terms of the polynomial are small and drop
% out._

%%
% _*Plot log of the first column against log of the second column.*
% This is called a log-log plot, and it's very common in economic modeling._

%%
% _Like most real-world data, this one's pretty noisy. 
% *Truncate the data so that you only see the linear chunk at the
% end and plot that.* This requires a bit of a judgment call as to
% where you should truncate._

%%
% _*Do linear regression on that. Then find the degree and leading
% coefficient of a polynomial f3 and plot it against data3.* Even though this isn't
% the "exact" polynomial, real-world data is often better estimated by
% just using the leading term. Retaining lower-order information is almost always what's called
% "overfitting," which is great at predicting the past and terrible at
% predicting the future. Anyone can predict the past._








