%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202
%*SE NECESITA USO DE SYMBOLIC pkg load symbolic
% SUMAS DE RIEMMAN
clear;
clc;
%*****EJERCICIO 4****
%intervalos
a=2; 
b=5;
disp("SE TARDARA UN POCO EN HACER EL PROCESO");
n_rec=500; %numero rectangulos
delta_x= (b-a)/n_rec; %delta de x

x=zeros(1, n_rec+1);%valores de x= n +1
%almacenamiento de los valores de x
for k= 1:length(x)
  x(k)=a + (k-1)*delta_x;
end
f=inline("4*x+5"); %llamado de la funcion
% calculo de las areas
area=0;
for j=1:n_rec

  area=area+f(x(j))*delta_x;
end
Area=(area);

fprintf("El area bajo la curva aproximadamente es: %d\n", double(Area));
disp("***entre mas cantidad de rectangulos dados, mas preciso sera el resultado***")

%OrgullosamenteTesji<3