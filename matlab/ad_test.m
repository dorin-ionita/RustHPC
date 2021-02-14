function psi = ad_test( x, y, t )
%AD_TEST Summary of this function goes here
%   Detailed explanation goes here
    freq = 100;
    A = 1;
    k_x = 2;
    k_y = 3;
    phi = -1;
    psi = A * sin(k_x * x + k_x * y + 2 * pi * freq * t + phi);

end

