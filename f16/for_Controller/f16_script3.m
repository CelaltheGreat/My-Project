
%% UCK 441E

%% Flight Stability and Control

%% Controller Design for 6-DOF Dynamics of the Aircraft HW3

%% Celal AKSOY 110200051

%% Modelling

% 0.4 Mach @10000ft  = 131.2000 m/s

% Initial Velocity at X = 131.2000 m/s
% Initial Velocity at Y = 0 m/s
% Initial Velocity at Z = 0 m/s

% Initial Altitude = 10000ft = 3048 m

load('f16_database.mat');

Mass = 9300 ;  % Mass(kg)
S    = 27.88;  % Wing surface area(m^2)

Ixx = 12875;   % kg*m^2
Iyy = 75674;   % kg*m^2
Izz = 85552;   % kg*m^2
Ixz = 1331;    % kg*m^2
Ixy = 0;       % kg*m^2  
Iyx = 0;       % kg*m^2
Iyz = 0;       % kg*m^2
Izx = Ixz;     % kg*m^2
Izy = Iyz;     % kg*m^2

I = [Ixx -Ixy -Ixz; -Iyx  Iyy  -Iyz; -Izx -Izy Izz]; % Inertia Matrix

chord    = 3.45;      % Chord(m)
b        = 9.144;     % Span(m)
X_cg     =  0.35;     % Center of Gravity(m)
X_cg_ref =  0.35;     % Ref. Center of Gravity(m)
d_SB     = 0;         % Speed brakes deflections
d_r      = 0;         % Rudder deflections    
    
%% Controller Design

V_c   = 153;  % Desired Velocity [m/s]
phi_c = 10;   % Desired Roll-Angle
h_ref = 0;    % Referance Altitude








