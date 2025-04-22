%                                                       -- script --
t= (0:0.01:1);
x=4*cos(2*pi*t);

L = 7;                       % level

figure('NumberTitle', 'off', 'Name', 'Quantization','Renderer', 'painters','units','normalized','outerposition',[0 0 1 1])
axis([0 1 -4 4]) 
subplot(311);                % output of the original signal
stem(t,x);
axis([0 1 -4 4]) 
grid on
title('x(t)')
%-- for L = 7 --
[~,y,e] = quantizer(x,L);    % quantize the signal (we dont use d, so we replace the value output with '~')
subplot(323);                % outut of the quantized signal 
stem(t,y,'Color',[1 0 0]);
axis([0 1 -4 4]) 
grid on
title('y(t), L = 7')
subplot(324);                % error of quantized wave 
stem(t,e,'Color',[1 0 0.7]);
axis([0 1 -0.7 0.7]) 
grid on
title('q(t), L = 7')
%-- for L = 8 --

L = 8;

[~,y,e] = quantizer(x,L);    % quantize the signal (we dont use d, so we replace the value output with '~')
subplot(325);                % outut of the quantized signal 
stem(t,y,'Color',[1 0 0]);
axis([0 1 -4 4]) 
grid on
title('y(t), L = 8')
subplot(326);                % error of quantized wave 
stem(t,e,'Color',[1 0 0.7]);
axis([0 1 -0.7 0.7]) 
grid on
title('q(t), L = 8')