monteCarloIntegral()

function monteCarloIntegral()
    R = 2;
    N = 1e7; % Number of random samples
    x = 4 * rand(N, 1) - 2; % Random x values between 0 and 10
    y = 4 * rand(N, 1) - 2; % Random y values between 0 and 10

    % Function evaluation
    f = sqrt(-x.^2 - y.^2 + R^2);

    % Mean estimation
    mean_f = mean(f);

    % Approximating the integral (area of the square times the mean)
    approxIntegral = (4/3) * 3.14 * R^3 * mean_f;

    % Calculation of the error
    sigma = std(f);
    error = sigma / sqrt(N);

    % Displaying results
    fprintf('Approximated Integral: %f\n', approxIntegral);
    fprintf('Approximation Error: %f\n', error);

    % Plotting
    figure;
    scatter3(x, y, f, 1, 'filled');
    title('Monte Carlo Integration');
    xlabel('x');
    ylabel('y');
    zlabel('f(x, y)');
    grid on;
end

