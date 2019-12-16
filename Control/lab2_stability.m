%%
%syms a;
%syms s;
%a=expand((s+1)*(s+2))

num1=[20];
deno1=[1 6 11 6];
func=tf(num1,deno1);
figure
subplot(3,1,1)
step(func)
subplot(3,1,2)
impulse(func)
subplot(3,1,3)
rlocus(func)
subplot(3,1,4)
pzmap(func)


num2=[20 1];
deno2=[1 1 0 -2];
func=tf(num2,deno2);
figure
subplot(4,1,1)
step(func)
subplot(4,1,2)
impulse(func)
subplot(4,1,3)
rlocus(func)
subplot(4,1,4)
pzmap(func)


num3=[20 -1];
deno3=[1 2 4 8];
func=tf(num3,deno3);
figure
subplot(4,1,1)
step(func)
subplot(4,1,2)
impulse(func)
subplot(4,1,3)
rlocus(func)
subplot(4,1,4)
pzmap(func)


num4=[10];
deno4=[1 10 8 80 16 160];
func=tf(num4,deno4);
figure
subplot(4,1,1)
step(func)
subplot(4,1,2)
impulse(func)
subplot(4,1,3)
rlocus(func)
subplot(4,1,4)
pzmap(func)


num5=[10];
deno5=[1 30 1 10 0];
func=tf(num5,deno5);
figure
subplot(4,1,1)
step(func)
subplot(4,1,2)
impulse(func)
subplot(4,1,3)
rlocus(func)
subplot(4,1,4)
pzmap(func)
