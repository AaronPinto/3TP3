function y = unitimpulse(x)
% The unit impulse function, delta(x).
if (nargin ~= 1)
    disp("unit impulse requires 1 argument!");
    return
end
y = cast(x == 0, class(x));
