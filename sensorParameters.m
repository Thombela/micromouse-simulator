sensorParams = struct();

sensorParams.sen_line_axle = 30;                                    %Distance from wheel axle to line sensor axle
sensorParams.sen_var_axle = 31;                                     %Distance from wheel axle to variable sensor axle
sensorParams.sen_dist_axle = 44;                                    %Distance from wheel axle to distance sensor axle

sensorParams.sen_line = 15;                                         %Distance from left to right line sensor
sensorParams.sen_line_left = sensorParams.sen_line/2;               %Distance from centre axle to left line sensor
sensorParams.sen_line_right = sensorParams.sen_line/2;              %Distance from centre axle to right line sensor

sensorParams.sen_var = 65;                                          %Distance from left to right variable sensor
sensorParams.sen_var_left = sensorParams.sen_var/2;                 %Distance from centre axle to left variable sensor
sensorParams.sen_var_right = sensorParams.sen_var/2;                %Distance from centre axle to right variable sensor

sensorParams.sen_dist = 45;                                         %Distance from left to right distance sensor
sensorParams.sen_dist_left = sensorParams.sen_dist/2;               %Distance from centre axle to left distance sensor
sensorParams.sen_dist_right = sensorParams.sen_dist/2;              %Distance from centre axle to right distance sensor
sensorParams.sen_dist_front = 22;                                   %Distance from centre axle to front distance sensor

sensorParams.sen_irradiance = 1; 