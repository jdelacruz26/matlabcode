////////////////////////////////////////////////////////////////////////////
///             UNIVERSIDA TECNOLOGICA DE PANAMA                        ////
///              FACULTAD DE INGENIERIA MECANICA                        ////
///   DEPARTAMENTO DE DISEÑO DE SISTEMAS Y COMPONENTES MECANICOS        ////
///                                                                     ////
/// DESARROLLADO POR: ING. JORGE DE LA CRUZ, MSC.                       ////
////////////////////////////////////////////////////////////////////////////
global L1;
global L2;
global L3;
global L4;
global w;
global t;
global fi20;
L1=3;
L2=0.5;
L3=2;
L4=3;
w=2*%pi;
tiempo=0:.05:2; //Tiempo de simulación e incremento
fi20=0;
//y0=zeros(1,9);
y0=[0 0 0 0 0 %pi/2 0 0 -%pi/2]; //condiciones iniciales para la función fsolve
for i=1:length(tiempo),
    t=tiempo(i);
    y2(i,:)=fsolve(y0,cartesianas); //La función fsolve resuelve el sistema de ecuaciones
    y0=y2(i,:);                      //dado en el archivo cartesianas.
end
fig1=figure(2);
plot(tiempo,y2(:,6))
//pause
fig2=figure(4);
fig2.figure_size=[610,469];
for i=1:length(tiempo),
    clf
    fig2.children.data_bounds=[-2,4,-2,3]
    if i==length(tiempo) then
    plot([y2(i,1) y2(i,4) y2(i,7) L1], [y2(i,2) y2(i,5) y2(i,8) 0],'r-')
    a=gca();
    a.children.children(1).thickness=3;
    else
    plot([y2(i,1) y2(i,4) y2(i,7) L1], [y2(i,2) y2(i,5) y2(i,8) 0],'b--')
    a=gca();
    end
end


// This work is licensed under the Creative Commons 
// Attribution-NonCommercial-ShareAlike 4.0 International License. 
// To view a copy of this license, visit 
