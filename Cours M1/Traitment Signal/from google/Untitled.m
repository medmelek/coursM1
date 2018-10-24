t1=0:3
t2=0:4
A=[1 2 3 4]
B=[5 4 3 2 1]
t3=0:7
C=conv(A,B)
subplot(1,2,1)
plot(t1,A,t2,B)
grid
subplot(1,2,2)
plot(t3,C)
grid