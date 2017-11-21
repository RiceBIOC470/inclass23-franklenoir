%Walter Frank Lenoir

%In this directory, you will find a derivaitve function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate.

sol = ode23(@repressilator,[0 200],[1,0,0]);
plot(sol.y(1,:),sol.y(2,:));
hold on;
plot(sol.y(2,:),sol.y(3,:));
hold on;
plot(sol.y(3,:),sol.y(1,:));
hold off;

%In all 3 situations, the circuit did oscillate. They converged into a
%stable circulating circuit. 

% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?

sol = ode23(@repressilator,[0 200],[0.5,0.5,0.5]);
plot(sol.y(1,:),sol.y(2,:));
hold on;
plot(sol.y(2,:),sol.y(3,:));
hold on;
plot(sol.y(3,:),sol.y(1,:));
hold off;

%All three circuits solutions exhibit a linear oscillation relationship 
%from ~0.41 to 0.5. With all circuits starting at the same value, they will 
%increase and decrease at the same rate. Oscillation is not circular
%because there is no variation in the gene products. 

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 

%As K2 increases, the oscillation still occurs however the circuluar shape tends to
%decrease and move closer to 0. As K2 decreases, oscillation decreases, as
%the repression dx tends to spiral. Oscillation stops occuring entirely at k2 = 0. 

% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 

%Oscillation still occurs, however the gene circuit no longer matches up.
%The shapes drift apart, as dx is not consistent for all three genes. The
%shapes spreadout rather than line up. 