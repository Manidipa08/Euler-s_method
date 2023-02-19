clc
clear
//Date : 11/11/21
//Aim : To solve a first order linear ordinary differential equation using Euler method
function dy=f(x,y)
    dy=exp(-x)
endfunction
x0=0
y0=1
x=0:0.01:10
h=0.01
x(1)=x0
y(1)=y0
n=length(x)
disp("length :",n)
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i))
end
disp("range : ",x)
disp("------------------------------------------------------")
disp("y : ",y)
plot(x',y,'-*r')
u=ode(y0,x0,x,f)
disp("solution : ",u)
plot(x,u)
title("Plotting of first order linear ODE")
title color Red
title fontsize 4
xlabel("X")
xlabel color magenta fontsize 4
ylabel("f(X)")
ylabel color green fontsize 4
legend(["By Eulers method";"using inbuilt command"])

