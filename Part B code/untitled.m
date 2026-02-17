% 1. Define the continuous-time transfer function
num = [509.2958];
den = [1, 1.32, 509.2958];
Gs = tf(num, den);

% 2. Define the sampling periods
Ts_list = [0.01, 0.1, 1];

% 3. Convert and display results for each Ts
for Ts = Ts_list
    % Convert using Zero-Order Hold (default method)
    Gz = c2d(Gs, Ts, 'zoh');

    fprintf('\n--- Discrete Transfer Function for Ts = %.2f s ---\n', Ts);
    display(Gz);
end