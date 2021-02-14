function psi = get_modulated_wave_val( phi, freq, v, x, y, t )
% https://www.tutorialspoint.com/analog_communication/analog_communication_angle_modulation.htm
% formula is taken from here^ (actually is from my paper skatch).
    
    % Step 0: In the large formula you will need the geometrical cos and
    % sin values
    geom_sin_val = get_geom_sin(0, 0, x, y); % Assume transmitter in origin
    geom_cos_val = get_geom_cos(0, 0, x, y);

    % Step 1: Compute value of 2D Gaussian Function
    v_x = v * geom_cos_val;
    v_y = v * geom_sin_val;
    delta_x = v_x * t;
    delta_y = v_y * t;
    exp_arg = delta_x ^ 2 * delta_y ^ 2;
    exp_arg = exp_arg * (-1);
    gaus_val = exp(exp_arg);
    
    % Step 2: Compute travelling wave amplitude
    % Assume max amplitude 1
    k = 2 * pi * freq / v;
    k_x = k * geom_cos_val;
    k_y = k * geom_sin_val;
    eps_x = k_x * x;
    eps_y = k_y * y;
    sin_arg = eps_x + eps_y;
    sin_arg = sin_arg - 2 * pi * freq * t;
    sin_arg = sin_arg + phi;
    tr_wave_amp = sin(sin_arg);
    
    % Step 3: Compute wave beam amplitude
    psi = gaus_val * tr_wave_amp;
end
