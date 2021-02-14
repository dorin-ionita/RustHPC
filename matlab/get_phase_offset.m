% Consider that functions change at us level (hence MHz Frequency)
% t = time departure from initial moment, in us
%       The bit pattern is given by a vector, each bit changes every 10us

function phase_offset = get_phase_offset(t, bits, bit_duration)
   phase_sensitivity = 1;
   data_len = length(bits); 
   if t > data_len * bit_duration
       phase_offset = 0;
   else
       bit_val = bits(mod(t, 10) + 1); % Matlab indexes from 0
       if bit_val == 0
           phase_dir = -1;
       else
           phase_dir = +1;
       end
       phase_offset = phase_dir * phase_sensitivity;
   end
end