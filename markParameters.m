markParams = struct();

markParams.addMazes = 3;               %The amount of additional mazes being added onto the base mazes
markParams.maxTime = 5*60;             %The maximum amount of time allowed to get the fastest time in the maze
markParams.separateSim = true;         %Run separate simulation to test algorithm, then test algorithm robustness
markParams.robustSim = false;          %Run robustness tests even if algorithm fails to complete maze in perfect scenario

markParams.sm_complete = 40;           %Score metric for completion
markParams.sm_explore = 10;            %Score metric for exploration (the percentage of the maze that was explored)

markParams.sm_sen_noise_line = 5;      %Score metric for how well the algorithm handles gaussian noise in line sensors
markParams.sm_sen_noise_dist = 5;      %Score metric for how well the algorithm handles gaussian noise in distance sensors
markParams.sm_sen_drift = 5;          %Score metric for how well sensor behaves if encoders drifts and adds/subtracts ticks

markParams.sm_sen_fail_line = 10;      %Score metric for how well algorithm handles line sensors failing
markParams.sm_sen_fail_dist = 10;      %Score metric for how well algorithm handles distance sensors failing
markParams.sm_sen_fail_var = 10;       %Score metric for how well algorithm handles variable sensors failing

markParams.sm_com_delay = 5;           %Score metric for testing code success when there is a delay in command

markParams.sm_whe_slip = 10;           %Score metric for how well algorithm behaves to uneven torque or power supply