%% Max Kramer
% I affirm that I have adhered to the honor code on this assignment. I also acknowledge working with Sara Aragaki on the week 4 assignments. 

%% 
% _Hello again, scientist! I'll write in italics, and problems for you will always be in *bold*.
% As a general rule, I expect
% you to do at least as much writing as I do. Code should be part of your solution, but
% I expect variables to be clear and explanation to involve complete sentences.
% Cite your sources; if you work with someone in the class on a problem,
% that's an extremely important source._

%% Problem 4.3.
% _Linear transformations of the plane (R^2) are important!
% Let's visualize them._

S = [-1    2 
     1     2 
    -3     0 
     3     0 
    -1    -3 
     1    -3 
    -2    -2 
     2    -2 
     0    -3.5
    -2.5  -1
     2.5  -1
     0.5    0]' % it's a lot easier to enter columns as rows and then transpose

%%
% _Each column of S is a point in R^2. Together, they form a smiley face._

scatter(S(1,:),S(2,:),'filled')
axis square;axis([-5 5 -5 5]);


%%
% _If we multiply S *on the left* by a 2x2 matrix A, then each column of S
% will get transformed by the matrix A. That lets us visualize the action
% of A. For example:_

A = [0 1; -1 0]' % rotate 90* counterclockwise

Sshifted = A*S;
scatter(Sshifted(1,:),Sshifted(2,:),'filled')
axis square;axis([-5 5 -5 5]);

%%
% _*Let B be the matrix which scales the plane by a factor of 0.9.
% Show me the smiley face, and the action of B on the smiley face, on
% the same set of axes. Then show me, on the same set of axes, what happens
% as B acts on the smiley face six more times.*_

Shrink = [0.9 0; 0 0.9];

figure;
hold on;
scatter(S(1,:),S(2,:),'filled')
axis square;axis([-5 5 -5 5]);

Sshrunk = Shrink * S;
scatter(Sshrunk(1,:),Sshrunk(2,:),'filled')

Sreallyshrunk = Shrink ^ 7 * S;
scatter(Sreallyshrunk(1,:),Sreallyshrunk(2,:),'filled')
hold off;

%%
% Shrink is the matrix for scaling R2 to R2 by a factor of 0.9. When multiplied by S (plotted in blue), the resulting matrix reveals the image scaled by a factor of 0.9 (Fig. 2, plotted in red). When the same matrix to the seventh power (the original plus six more times) is multiplied by S, the resulting matrix is plotted in yellow.


%%
% _*Let C be the map which leaves the y-axis alone but shears (1,0) to (1,1).
% Show me what C does to the smiley face.* Shear forces are dangerous: what
% happens if you apply C a few more times? *Show me.*_

C = [1 0; 1 1];

Ssheared = C * S;
figure;
hold on;
scatter(Ssheared(1,:),Ssheared(2,:),'filled')
axis square;axis([-5 5 -5 5]);

Sreallysheared = C^5 * S;
scatter(Sreallysheared(1,:),Sreallysheared(2,:),'filled')
hold off;


%%
% The matrix C which applies a shear of 1 to the x axis while not affecting the y axis is denoted [1 0; 1 1]. When this transformation is applied to S (Fig. 3), the result is pictured in blue. When this shear is applied 5 times to the same matrix, the result is pictured in red.


%%
% _Order matters a lot when you're multiplying matrices.
% *Let D be the matrix which first rotates by 90 degrees, then shears by C.
% Let E be the matrix which first shears by C, then rotates 90 degrees.
% Show me the actions of D and E on the smiley face, on different sets of axes.*
% Be sure to make clear which is which here._

D = A * C;
E = C * A;

S_d = D * S;
figure;
scatter(S_d(1,:),S_d(2,:),'filled')
axis square; axis([-5 5 -5 5]);

S_e = E * S;
figure; 
scatter(S_e(1,:),S_e(2,:),'filled')
axis square; axis([-5 5 -5 5]);

%%
% The first figure (Fig. 4) describes the transformation D as applied to S. The second figure (Fig. 5) describes the the transformation E as applied to S. 





