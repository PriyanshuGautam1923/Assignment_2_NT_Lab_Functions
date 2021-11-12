function n = n_for_butterworth(transit_band,pass_freq)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
wn=1+transit_band/pass_freq;
n=ceil(log(99)/(2*log(wn)));
end

