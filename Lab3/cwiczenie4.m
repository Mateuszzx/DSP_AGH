step = (BND(2) - BND(1))/1000;	
tt = [BND(1)-T0 : step: BND(2) + T0];
xx = zeros(1,length(tt));
xx =  xx + a(1); % skladowa stala
				
figure
plot(tt,xx,'m'); grid on, hold on;
plot([0,0],[-0.6,0.6],'w.')
xlabel('t'); ylabel('x(t)'); 
pause(0.5)
				
for n = 1 : NT
    xx_n = 2*(a(n+1)*cos(w0*n*tt) + b(n+1)*sin(w0*n*tt));
    xx = xx + xx_n;
    plot(tt,xx_n,'r'); plot(tt,xx,'m');
    title(sprintf('n = %d',n+1)); pause(0.5)
end

plot(tt,xx,'k','LineWidth',3);
title('Rekonstrukcja sygna³u ci¹g³ego na podstawie szeregu Fouriera')
