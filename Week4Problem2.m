%% A Quick MATLAB Graphing Tutorial
% Steve Balady, 2018

%% Problem 4.2.
% _*Once again, publish this and upload it as Week 4 Problem 2.*_

%%
% _Here's a quick MATLAB graphing tutorial.
% This isn't exhaustive, but it's enough for you to get 
% your hands dirty._

P = [1 1; 2 5]

%%
% _Here's the points (1,1) and (2,5); we can graph them with scatter()._

scatter(P(:,1),P(:,2),'filled') % plot the first column against the second
xlim([0 3]); ylim([0 6]); % MATLAB often chooses awkward axes


%%
% _Now let's fit a line to these two points._
syms x;
f = 4*x-3;
fplot(f,[0 3]) % !?!?

%%
% _What happened? scatter() and fplot() both create figures.
% Unless you explicitly tell MATLAB to draw them on the
% same set of axes, it'll start fresh every time._

scatter(P(:,1),P(:,2),'filled');
hold on; % this means "keep drawing on the same axes"
xlim([0 3]); ylim([0 6]);
fplot(f,[0 3])

%%
% _We can also get fancy._

g = (x-1)*(x-2);
A = [-10:10]';
fplot(f+A*g,[0 3])
hold off; % "I'm done with this picture now, thanks"

%%
% _A is a (column) vector of the 21 integers in [-10,10].
% We can also treat A as the x-coordinates of a function
% by using the subs() command:_

h = f+2*g;
hA = subs(h,x,A); % the vector of y-coordinates
scatter(A,hA,'filled'); % this plots the points (A, h(A))
hold on;
fplot(h,[-10 10]) % and this plots the graph of h

%%
% _This should be enough for now. If you'd like to 
% make your graphs prettier (and see lots of cool examples),
% check out the documentation for scatter and fplot._
