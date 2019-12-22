num=[10 1]
den=[1 -3 18 10]
num1=[10 1]
den1=[1 -3 28 11]
my_open_sys=tf(num,den)
my_close_sys=tf(num1,den1)
figure
subplot(2,1,1)
pzmap(my_open_sys)
subplot(2,1,2)
pzmap(my_close_sys)
