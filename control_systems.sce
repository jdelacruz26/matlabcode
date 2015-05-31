// Speed tachometer example
clear
Ra=1; Kt=10; J=2; f=0.5; Kb=0.1;
num1=poly([1],'s','c'); 
den1=poly([f,J],'s','c'); 
num2=poly([Kt*Kb],'s','c'); 
den2=poly([Ra],'s','c');

// defining transfer functions
G1 = syslin('c',num1,den1);
G2 = syslin('c',num2,den2);
//
// Open loop - transfer function
OpenLoop = -G1/.G2; 
disp(OpenLoop);
t = 0:0.01:7;
imp_resp = csim('step',t,OpenLoop) //
setting=imp_resp(length(t));
disp(setting)
scf(3)
plot(t,imp_resp)
a=gca();
xgrid();
title('Open-Loop Disturbance Step response','fontsize',4);
xlabel('time[sec]','fontsize',2);
ylabel('Speed','fontsize',2);
