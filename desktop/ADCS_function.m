function [TcmdWhl, m, auxiliar] = ADCS_function(current_time, svb, bvb, wn, qbn, HWhl, PosN, VelN, auxiliar)
% Finds the rotation matrix and the quaternion given 2 vectors readings 
%   in body coordinates using the TRIAD method.

%
% Inputs            Description                                         Units
%   vectors_body    Array[3x2] : 2 vectors in Body coordinates.         [N/A]
%       vectors_body(:,1) : sun vector
%       vectors_body(:,2) : magnetometer vector                         Units
%   vectors_inertial    Array[3x2] : 2 vectors in inertial coordinates. [N/A]
%       vectors_inertial(:,1) : sun vector
%       vectors_inertial(:,2) : magnetometer vector
% Outputs
%   R               Array[3x3] : attitude rotation matrix               [N/A]
%   Q               Array[4x1] : attitude quaternion                    [N/A]

%% To add noise uncomment the following lines:
%     % sun vector with gaussian noise:
%     vectors_body(:,1) = vectors_body(:,1) + randn(3,1)/50;
%     % sun vector with bias noise:
%     vectors_body(:,1) = vectors_body(:,1) + 0.1*ones(3,1);

%     % magnetic vector with gaussian noise:
%     vectors_body(:,2) = vectors_body(:,2) + randn(3,1)/50;
%     % magnetic vector with bias noise:
%     vectors_body(:,2) = vectors_body(:,2) + 0.1*ones(3,1);


%% TRIAD algorithm
m=[0 0 0];
TcmdWhl = [0 0 0];
end
