// Speed tachometer example
clear
Ra=1; Kt=10; J=2; f=0.5; Kb=0.1; Ka=54; Kg=1;
num1=poly([1],'s','c'); 
den1=poly([f,J],'s','c'); 
num2=poly([Kg*Ka],'s','c'); 
den2=poly([1],'s','c');
num3=poly([Kb],'s','c');
den3=poly([1],'s','c');
num4=poly([Kt/Ra],'s','c');
den4=poly([1],'s','c');

// defining transfer functions
G1 = syslin('c',num1,den1);
G2 = syslin('c',num2,den2);
G3 = syslin('c',num3,den3);
G4 = syslin('c',num4,den4);
//
// Open loop - transfer function
GR = G2+G3;
GR = GR*G4;
ClosedLoop = -G1/.GR;
disp(ClosedLoop);
t = 0:0.0001:0.02;
imp_resp = csim('step',t,ClosedLoop) //
setting=imp_resp(length(t));
disp(setting)
scf(2)
plot(t,imp_resp)
a=gca();
xgrid();
title('Closed-Loop Disturbance Step response','fontsize',4);
xlabel('time[sec]','fontsize',2);
ylabel('Speed','fontsize',2);
