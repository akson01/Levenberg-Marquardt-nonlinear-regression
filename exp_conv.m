function y = exp_conv(x,t,S)
%EXP_CONV(x,t,S) calc the 1-D convolution of a Gaussian and a exp func.
%   t -- decay time
%   S -- sigma of the Gaussian
    if t==0
        y=1/sqrt(2*pi)/S*exp(-x.^2/S^2/2);   % just a Gaussian (convolution w/ delta func)
    else
        y=(.5+.5*erf((x-S^2/t)/sqrt(2)/S)).*exp(-x/t+S^2/t^2/2);
    end
end
