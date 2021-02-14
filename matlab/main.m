% Starting from a carrier wave (simple sin function), here I shall
% simulate propagation of information through space and time using
% modern modulation and coding schemes.

% OFDM: https://en.wikipedia.org/wiki/Orthogonal_frequency-division_multiplexing

% Modulation: ASK, FSK, PSK, BPSK, QPSK, QAM
% What is channel capacity -> what is maximum data rate for a channel
% https://www.cse.wustl.edu/~jain/cse574-14/ftp/j_03phy.pdf

% I choose PSK as it is used in WLAN
% (https://en.wikipedia.org/wiki/Phase-shift_keying)

% https://www.tutorialspoint.com/analog_communication/analog_communication_angle_modulation.htm

% Matlab plot:
% https://www.mathworks.com/help/matlab/ref/quiver.html

% Consider that functions change at ns level (hence MHz Frequency)
% t = time departure from initial moment, in ns
%       The bit pattern is given by a vector, each bit changes every nsus
bit_duration = 10;
bits = [1 0 1 0 1 0 1 0 0 0 0 1 1 1 1 1];
max_t = bit_duration * length(bits);
max_x_grid = 100;
max_y_grid = 100;
freq = 100; % MHz (1 / bit_duration = 1 / 10 ns)
v = 1; % TODO (Considering that we have MHz and ns, what unit of measure should we use here?)

% https://www.tutorialspoint.com/analog_communication/analog_communication_angle_modulation.htm
% Use these formulae
psi = zeros(max_x_grid, max_y_grid, max_t);
for t = 1:max_t
    for x = 1:max_x_grid
        for y = 1:max_y_grid
            phi = get_phase_offset(t, bits, bit_duration);
            psi(x, y, t) = get_modulated_wave_val(phi, freq, v, x, y, t);
        end
    end
end

%Important note: The simulation assumes that the signal source is in (x, y)