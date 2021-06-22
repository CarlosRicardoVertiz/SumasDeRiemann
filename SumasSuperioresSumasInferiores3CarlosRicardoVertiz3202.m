%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202
%*SE NECESITA USO DE SYMBOLIC pkg load symbolic
% SUMAS DE RIEMMAN
clear;
clc;
%*****EJERCICIO 3****
%intervalos
a=-2; 
b=1;
disp("SE TARDARA UN POCO EN HACER EL PROCESO");
n_rec=10000; %numero rectangulos
delta_x= (b-a)/n_rec; %delta de x

x=zeros(1, n_rec+1);%valores de x= n +1
%almacenamiento de los valores de x
for k= 1:length(x)
  x(k)=a + (k-1)*delta_x;
end
f=inline("-x+1"); %llamado de la funcion
% calculo de las areas
area=0;
for j=1:n_rec

  area=area+f(x(j))*delta_x;
end
%**CALCULO DE LA SEGUNDA AREA, YA QUE LA FUNCION
%TIENDE A TENER VALORES NEGATIVAS, RECORDANDO QUE NINGUN
%AREA ES NEGATIVA***
%intervalos
a2=1; 
b2=3;
n_rec2=10000; %numero rectangulos
delta_x2= (b2-a2)/n_rec2; %delta de x

x2=zeros(1, n_rec2+1);%valores de x= n +1
%almacenamiento de los valores de x
for k2= 1:length(x2)
  x2(k2)=a2 + (k2-1)*delta_x2;
end
f2=inline("-x+1"); %llamado de la funcion
% calculo de las areas
area2=0;
for j2=1:n_rec2

  area2=area2+f2(x2(j2))*delta_x2;
end
area2abs=abs(area2);
Area=abs((area+area2abs));

Area;
fprintf("El area bajo la curva aproximadamente es: %d\n", double(Area));
disp("***entre mas cantidad de rectangulos dados, mas preciso sera el resultado***")

%OrgullosamenteTesji<3