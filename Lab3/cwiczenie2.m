NT = 15;
X=[];
ind = -NT : NT;
for n = ind
    Xn = (1/T0)*int(x*exp(-i*w0*n*t),t,BND)
    X(n + NT + 1) = Xn;
end
									
figure; hold on; 
stem(ind*f0,real(X),'b','LineWidth',2); 
xlabel('f [Hz]')
stem(ind*f0,imag(X),'r','LineWidth',2); 
grid on
legend('real(X_n)','image(X_n)','Location','NorthEast')
title('Wspó³czynniki zespolonego szeregu Fouriera X_n')