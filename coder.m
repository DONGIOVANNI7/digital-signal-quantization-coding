%     -- coder --
function [z] = coder(y,d)
    z = y;                % create z array
    m = 1;
    for i = y             % check every elemement on y array
        j = min(y);
        k = 0;
        while j <= max(y) % find element's level
            if i == j
                z(m) = k; % replace with natural number
            end
            k = k + 1;
            j = j + d;
        end
        m = m + 1;
    end
    z = dec2bin(z);       % make z array, binary array 
end

