%           -- quantizer --
function [d,y,e] = quantizer(x,L)
    if mod(L,2) == 0.0
        d = (max(x) - min(x))/L;             % find d for Mid-Rise
        n_min = ((-L+1)/2);              % set n_min
        n_max = ((L-1)/2);                   % set n_max
        n = n_min:n_max;                 % find all n
        g = n*d;                        % find yn (named g here)
    else
        d = (max(x) - min(x))/(L-1);             % find d for Mid-Tread
        n_min = -(L-1)/2;
        n_max = ((L-1)/2);
        n = n_min:n_max;
        g = n*d;
    end
    y = zeros(size(x));
    k = 1;
    
    for i = x                            % fill y array with all the closest numbers from yn (g) for each x
        for j = g
            if ((j==max(g))&&(i<=max(x))&&(i>=j-(d/2)))
                y(k) = j;
            elseif((i>=j)&&(i<j+(d/2)))
                y(k) = j;
            elseif((i<j)&&(i>=j-(d/2)))
                y(k) = j;
            end
        end
        k = k + 1;
    end
    
    e = y - x;                            % create errors' array
 
end
