t=0:0.000067:0.00255
F0=5000
Fe=15000
F=1000
m=0.5
E0=1
N=length(t)
f=(0:N-1)*Fe/N
eam=E0*(1+m*cos(2*pi*F*t)).*cos(2*pi*F0*t)
subplot(1,2,1)
plot(t,eam)
title('Entrée modulation')
xlabel('t')
ylabel('eam')
grid

Eam=fft(eam)
Peam=Eam.*conj(Eam)
subplot(1,2,2)
plot(f,Peam)
axis([0 7000 0 400])
title('Sortie modulation')
xlabel('f')
ylabel('Peam')
grid