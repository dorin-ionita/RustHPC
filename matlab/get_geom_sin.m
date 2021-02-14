function geom_sin_val = get_geom_sin( x_0, y_0, x, y )
%GET_TRIG_VALUES Summary of this function goes here
%   Detailed explanation goes here
    up = y - y_0;
    down_squared = (y - y_0) ^ 2 - (x - x_0) ^ 2;
    down = sqrt(down_squared);
    geom_sin_val = up / down;
end

