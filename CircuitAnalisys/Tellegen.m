clc;
V=[-0.09942; -0.9771; -2.603; -0.6794; -0.9237; -2.099; 2; 3; 2; 0.2977; -2.099];
I=[0.099237; 0.977098; 2.6031; 2.7175; 3.6946; 4.1985; 3.695; 2.603; 6.198; -5.321; 2];
VT=transpose(V);
answer=VT*I;
disp(answer);