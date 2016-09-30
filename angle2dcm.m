function [dcm] = angle2dcm(r)
% Create euler angle rotation matrix
% 
% r = [r1 r2 r3]
% r1 is z-axis rotation, r2 is y-axis rotation, and r3 is x-axis rotation
% dcm = direction cosine matrix

dcm = Rz(r(3))*Ry(r(2))*Rx(r(1));


function A = Rx(a)
A = [1 0 0;0 cos(a) -sin(a);0 sin(a) cos(a)];

function A = Ry(a)
A = [cos(a) 0 sin(a);0 1 0;-sin(a) 0 cos(a)];

function A = Rz(a)
A = [cos(a) -sin(a) 0;sin(a) cos(a) 0;0 0 1];