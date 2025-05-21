function mySetupRobotSim()
    coder.extrinsic('figure', 'imshow', 'hold', 'drawnow', 'imread', 'imresize', 'axis');
    
    %% Figure setup
    % FigureName - Name of simulation figure window
    FigureName = 'Robot Simulator';
    FigureTag = 'RobotSimulator';
    existingFigures = findobj('type','figure','tag',FigureTag);
    if ~isempty(existingFigures)
        figure(existingFigures(1)); % bring figure to the front
        error('There is already an existing figure window for RobotSimulator.');
    end
    Figure = figure('Name',FigureName,'tag',FigureTag);
    ax = axes('parent',Figure);
    
    %% Load maps
    mapVar = get_param(gcb,'mapVar');
    mazeForSim = evalin('base',mapVar);
    
    if ~isempty(mazeForSim)
        % Define the custom colormap
        customColormap = [
            1, 1, 1;    % White (0)
            0.6, 0.4, 0.2; % Brown (1)
            0, 0, 0;    % Black (2)
        ];
    
        % Display the map using imagesc
    imagesc(ax, [0, mazeForSim.cols*200], [0, mazeForSim.rows*200], mazeForSim.lineFollowingMap);
        colormap(ax, customColormap);
        axis(ax, 'equal'); % Maintain aspect ratio
        axis(ax, 'off'); % Hide axes
    else
        % If mapForSim is empty, create a default empty map
        emptyMap = zeros(8, 'logical');
        mapResolution = 2;
        simMap = robotics.BinaryOccupancyGrid(emptyMap, mapResolution);
        show(simMap, 'Parent', ax);
    end
    
    %% Plotting
    poseX = str2double(get_param(gcb, 'startX'));
    poseY = str2double(get_param(gcb, 'startY'));
    poseTheta = -str2double(get_param(gcb, 'startTheta'));
    
    % Plot the robot's position and orientation
    hold(ax, 'on');
    title(ax, 'Micromouse Robot Simulator - Mpilonhle Ngcoya');
    
    % Load and resize the robot image (replace 'robotImage.png' with your image file, PNG with transparency recommended)
    [robotImg, ~, alpha] = imread('mouse_image.png'); % Load a PNG image with transparent background (or JPG)
    rotatedImg = imrotate(robotImg, poseTheta, 'bilinear', 'crop');
    rotatedAlpha = imrotate(alpha, poseTheta, 'bilinear', 'crop');
    
    % Position the image at (poseX, poseY) with rotation effect (center at poseX, poseY, offset for rotation)
    halfSize = 68;
    bounds = [poseX-halfSize, poseX+halfSize, poseY-halfSize, poseY+halfSize];
    
    plotHandle = image('CData', rotatedImg, ...
                             'XData', bounds(1:2), ...
                             'YData', bounds(3:4), ...
                             'AlphaData', rotatedAlpha);
    drawnow;
    assignin('base', 'plotHandle', plotHandle);
end