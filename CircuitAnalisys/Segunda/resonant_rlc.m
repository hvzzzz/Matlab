f       = logspace(3, 5, 101); 
f0      = 1e3;     
Q       = 1;     
H       = 1./sqrt(1+Q^2*(f/f0-f0./f).^2);
HdB     = 20*log10(H); 
semilogx(f, HdB, 'r'); grid on; 
title('Bode plot'); 
xlabel('frequency, Hz'); ylabel('H, dB')
axis([min(f) max(f) -30 0])