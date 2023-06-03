% Lecciones en Matlab
% Ismael Mendoza
%============================%
% Uso de bucles% 
%============================%

%Estos programas ilustran el uso del comando for
% Estructura
%   for [condición]
%   [secuencia de comandos]
%   end
% Correr el programa por secciones

%Parte 01
%Este programa usa el comando for para generar una secuencia autorregresiva
clear
T = 50;
k0 = 0;
phi = 0.7;
k(1) = k0;
for t=2:T
k(t)=phi*k(t-1)+randn;
end
plot(k)

%Parte 02
%Este programa ilustra otro uso del comando for
clear
n=10;
for i=1:n
for j=1:n
A(i,j)=i*j*abs(i-j);
end
end
mesh(A)
AZ = -50; EL = 45;
view(AZ, EL)

%Estos programas ilustran el uso del comando if
% Estructura
% if [condición]
% [secuencia de comandos]
% else
% [secuencia de comandos]
% end

% Ejemplo 03
%Este programa simula T lanzamientos de una moneda posiblemente
%desequilibrada.
clear
T = 1000;
equil = 0.5;
for i=1:T
a = rand;
if a<=equil
lanzamiento(i) = 0;
else
lanzamiento(i) = 1;
end
end
hist(lanzamiento)
frecunos = sum(lanzamiento)/T;

% Oferta - Demanda
%Este programa hace unos ejercicios sencillos con las fuciones
%de oferta y demanda p=c+dQ y p=a-bQ.
clear
%definición de los parámetros
a = 10;
b = 0.7;
c = 2;
d = 0.5;
%Definimos valores para el vector p
p = [0:0.1:10];
%Creamos las funciones
Qd = (a-p)/b;
Qs = (p-c)/d;
%Gráfica de ambas funciones
plot(Qd, p, 'r', Qs, p, 'b')
%axis([0 max(max(Qs), max(Qd)) 0 max(p)])
%axis('off')
%grid

%Cálculo del equilibrio
Qstar = (a-c)/(b+d);
pstar = (a*d+b*c)/(b+d);
disp('El par de equilibrio (p_estrella, Q_estrella) es')
[pstar Qstar]
disp(['Precios de equilibrio= ', num2str(pstar)])
disp(['Cantidades de equilibrio= ', num2str(Qstar)])
    