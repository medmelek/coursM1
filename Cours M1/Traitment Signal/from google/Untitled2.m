t=0:0.001:0.255
Fe=1000
y=rand(size(t))
x=2*sin(2*pi*50*t)+2.5*sin(2*pi*320*t)+sin(2*pi*200*t)+sin(2*pi*400*t)+0.5*y
plot(t,x)
N=length(t)
f=(0:N-1).*Fe/N
X=fft(x)
Pxx=X.*conj(X)
plot(f,Pxx)
axis([0 500 0 120000])
grid