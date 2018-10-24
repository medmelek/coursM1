t=-20:0.1:200
u=[t>0]
    
f=0.055
fe=2*0.055

x=[exp(-0.02.*t).* sin(0.35.*t).*u ] ;


plot(t,x)

grid