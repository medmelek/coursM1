t=0:0.001:100
Fe=1000
x=sin(2*pi*10*t)
N=length(t)
f=(0:N-1).*Fe/N
X=fft(x)
Pxx=X.*conj(X)

plot(f,Pxx)
grid
axis([0 50 0 1200])