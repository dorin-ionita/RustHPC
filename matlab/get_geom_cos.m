function geom_cos_val = get_geom_cos( x_0, y_0, x, y )
%GET_GEOM_COS Summary of this function goes here
%   Detailed explanation goes here
    up = x - x_0;
    down_squared = (y - y_0) ^ 2 - (x - x_0) ^ 2;
    down = sqrt(down_squared);
    geom_cos_val = up / down;
end

