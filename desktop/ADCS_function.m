function [TcmdWhl, m, auxiliar] = ADCS_function(current_time, svb, bvb, wn, qbn, HWhl, PosN, VelN, auxiliar)
% Attitude control algorithm. This function receives the sensors readings of a simulated spacecraft and command its actuators.

% Inputs            Description [Units]
%   current_time    datetime object: simulated time [N/A]
%   svb             Array[3x1]: Sun-pointing unit Vector, expressed in Body frame [N/A]
%   bvb             Array[3x1]: magnetic field in Body frame [Tesla]
%   wn              Array[3x1]: Angular Velocity of Body frame wrt iNertial frame expressed in Body frame [rad/sec]
%   qbn             Array[4x1]: attitude Quaternion of Body frame in iNertial frame (scalar part is the first element) [N/A]
%   HWhl            Array[1x3]: Wheels Angular Momentum [Nms]
%   PosN            Array[3x1]: Position expressed in iNertial frame [m]
%   VelN            Array[3x1]: Velocity expressed in iNertial frame [m/sec]
   
% Outputs
%   TcmdWhl         Array[1x3]: Torque commanded to the wheels [Nm]
%   m               Array[1x3] : Magnetic dipole commanded to the magnetorquers [Am^2]

% auxiliar is a variable available to get previous value of any other defined varible. 
% It is intended to be used for the derivative and integral parts of a PID controller.
% It is initially defined as a all zeros array[1x10]

m=[0 0 0];
TcmdWhl = [0 0 0];
end
