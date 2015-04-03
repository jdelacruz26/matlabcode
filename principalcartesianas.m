%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%              UNIVERSIDAD TECNOLOGICA DE PANAMA                    %%%
%%%                FACULTAD DE INGENIERIA MECANICA                    %%%
%%%    DEPARTAMENTO DE DISEÑO DE SISTEMAS Y COMPONENTES MECANICOS    %%%
%%%                                                                   %%%
%%% CODIGO GENERADO POR: ING. JORGE DE LA CRUZ                        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
global L1
global L2
global L3
global L4
global w
global t
global fi20
L1=3;
L2=0.5;
L3=2;
L4=3;
w=2*pi;
tiempo=0:.05:2;
fi20=0;
%y0=zeros(1,9);
y0=[0 0 0 0 0 pi/2 0 0 -pi/2]; %condiciones iniciales para la función fsolve
for i=1:length(tiempo),
    t=tiempo(i);
    y2(i,:)=fsolve(@cartesianas,y0);
    y0=y2(i,:);
end
figure(2)
plot(tiempo,y2(:,6))
pause
% animacion
figure(4)
for i=1:length(tiempo),
    plot([y2(i,1) y2(i,4) y2(i,7) L1], [y2(i,2) y2(i,5) y2(i,8) 0])
    axis([-2 4 -3 3])
    pause(0.2)
end

%%
% This work is licensed under the Creative Commons 
% Attribution-NonCommercial-ShareAlike 4.0 International License. 
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.