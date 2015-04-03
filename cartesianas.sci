////////////////////////////////////////////////////////////////////////////
///             UNIVERSIDA TECNOLOGICA DE PANAMA                        ////
///              FACULTAD DE INGENIERIA MECANICA                        ////
///   DEPARTAMENTO DE DISEÑO DE SISTEMAS Y COMPONENTES MECANICOS        ////
///                                                                     ////
/// DESARROLLADO POR: ING. JORGE DE LA CRUZ, MSC.                       ////
////////////////////////////////////////////////////////////////////////////

function ecuac=cartesianas(q)
global L1;
global L2;
global L3;
global L4;
global w;
global t;
global fi20,
x2=q(1);
y2=q(2);
fi2=q(3);
x3=q(4);
y3=q(5);
fi3=q(6);
x4=q(7);
y4=q(8);
fi4=q(9);
ecuac(1)=x2;
ecuac(2)=y2;
ecuac(3)=x3-x2-L2*cos(fi2);
ecuac(4)=y3-y2-L2*sin(fi2);
ecuac(5)=x4-x3-L3*cos(fi3);
ecuac(6)=y4-y3-L3*sin(fi3);
ecuac(7)=L1-x4+L4*cos(fi4);
ecuac(8)=y4-L4*sin(fi4);
ecuac(9)=fi2-fi20-w*t;
//% This work is licensed under the Creative Commons 
// Attribution-NonCommercial-ShareAlike 4.0 International License. 
// To view a copy of this license, visit 
endfunction
