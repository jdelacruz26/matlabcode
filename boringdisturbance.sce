// Response to  a disturbance D(s)=1/s for K=50, 100
//
K1 = 100; K2 = 50;
numg = poly([1],'s','c');
deng = poly([0 12 1],'s','c');
num1 = K1*numg; num2 = K2*numg;
// Transfer function
G1 = syslin('c',numg,deng);
G2 = syslin('c',num1,numg);
G3 = syslin('c',num2,numg);

G01 = G1/.G2;
G02 = G1/.G3;
t = 0:0.001:2;
step_resp1 = csim('step',t,G01) //
step_resp2 = csim('step',t,G02)//
setting=step_resp1(length(t));
disp(setting)
scf(2)
subplot(2,1,1)
plot(t,step_resp1)
a=gca();
a.children.children(1).thickness=3;
xgrid();
title('Disturbance response for K100','fontsize',4);
xlabel('time[sec]','fontsize',2);
ylabel('c(t)','fontsize',2);

subplot(2,1,2)
plot(t,step_resp2)
a=gca();
a.children.children(1).thickness=3;
xgrid();
title('Disturbance response for K50','fontsize',4);
xlabel('time[sec]','fontsize',2);
ylabel('c(t)','fontsize',2);
