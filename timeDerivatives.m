%% Time Derivatives
%  Computes the first time derivatives for the average trajectory in case B
%  using midpoint method and plots them in a 2x1 grid of subplots

% Uses midpoint to calculate and stores values
dHeight = num_der_central(tspan, avgHeight);
dRange = num_der_central(tspan, avgRange);

   figure
    subplot(2,1,1);
    plot(tspan, dRange, 'LineWidth', 2);
        xlabel('Time (sec)', 'FontSize',12);
        ylabel('Range Derivative (m/s)', 'FontSize',12);
        grid
        title("Average Trajectory Derivative of Range vs Time", "FontSize", 14)
   
    subplot(2,1,2);
    plot(tspan, dHeight, "-r", 'LineWidth', 2);    
        xlabel('Time (sec)', 'FontSize',12);
        ylabel('Height Derivative (m/s)', 'FontSize',12);
        grid
        title("Average Trajectory Derivative of Height vs Time", "FontSize", 14)