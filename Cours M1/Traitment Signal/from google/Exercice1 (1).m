t=-0.127:0.001:0.127
y=rand(size(t))
u=[zeros(1,127),1,zeros(1,127)]
Fe=1000
N=length(t)
f=(0:N-1).*Fe/N
x=2*sin(2*pi*50*t)+2.5*sin(2*pi*320*t)+0.5*y
X=fft(x)
Pxx=X.*conj(X)
subplot(1,2,1)
plot(f,Pxx)
axis([0 500 0 60000])
title('Entrée filtre passe haut')
xlabel('f')
ylabel('Pxx')
grid

h=u-(1/(200*pi))*(exp(-t/200*pi))
s=conv(x,h)
S=fft(s,255)
Pss=S.*conj(S)
subplot(1,2,2)
plot(f,Pss)
axis([0 500 0 25000])
title('Sortie filtre passe haut')
xlabel('f')
ylabel('Pss')
grid