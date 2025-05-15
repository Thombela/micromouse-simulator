robotParams = struct();

robotParams.wheelR = 0.031 * 1000;               % Wheel radius (mm)
robotParams.axleLength = 0.136 * 1000;           % Distance between wheels (mm)
robotParams.ticksPerRot = 20;                    % Ticks per rotation for encoders

robotParams.width = 85;                          % Distance from left to right of robot (mm)
robotParams.length = 123;                        % Distance from back to front of robot (mm)
robotParams.axle_to_front = 56;                  % Distance from axle to front of robot (mm)
robotParams.axle_to_centre = 5;                  % Distance from axle to centre of robot (mm)

load wheelLUT;                                   % Load lookup table
load wheelMotorModel;                            % Load motor model