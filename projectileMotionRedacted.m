function [positionVector, timeVector] = projectileMotionRedacted(initialPosition, initialSpeed, angleOfProjection)
%% % This is an introduction to Matlab plotting basics .
%
% We will 
%
%
% Input: None
% Output: None
%
% Dec 20, 2019: Mya Reid wrote this.


%% Declare variables

accelerationDueToGravity = 9.8; % acceleration due to gravity; m/s^2
tInitial = 0; % initial time; s
tFinal = 20; % Final time; s
dt = 0.1; % time step; s

timeVector = [tInitial: dt : tFinal]';

% Initial position and speed
x_init = initialPosition(1);
y_init = initialPosition(2);
vx_init = initialSpeed*cosd(angleOfProjection);
vy_init = initialSpeed*sind(angleOfProjection);

%% Positions at future times
x = x_init + vx_init*timeVector;
y = y_init + vy_init*timeVector - accelerationDueToGravity*(timeVector.^2)/2;

% set all negative values of y to zero. The ball comes to rest when it hits
% the ground.

y(y<0)=0; 

positionVector = [x, y];

%% Mya was here
