t=-10:0.1:12
N=length(t)
Fe=10
f=(0:N-1).*Fe/N
X=fft(u)
u=[zeros(1,100) ones(1,101) zeros(1,20)]
Pxx=X.*conj(X)
plot(f,Pxx)
axis([0 1 0 10000])
