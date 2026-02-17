% Define the continuous transfer function
num = 1600/pi;
den = [1 1.32 1600/pi];
G_s = tf(num, den);

% Sampling periods
Ts1 = 0.01;
Ts2 = 0.1;
Ts3 = 1;

% Convert to discrete using Zero-Order Hold (default)
G_z_001 = c2d(G_s, Ts1, 'zoh');
G_z_01  = c2d(G_s, Ts2, 'zoh');
G_z_1   = c2d(G_s, Ts3, 'zoh');

% Display results
disp('Discrete TF with Ts = 0.01 s:')
G_z_001;

disp('Discrete TF with Ts = 0.1 s:')
G_z_01;

disp('Discrete TF with Ts = 1 s:')
G_z_1;