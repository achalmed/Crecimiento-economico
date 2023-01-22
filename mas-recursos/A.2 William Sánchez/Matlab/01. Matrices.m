% Lecciones en Matlab
% Ismael Mendoza
%============================%
% Trabajo con matrices% 
%============================%

% Creamos la matriz A
A=[1 2 3; 4 5 6; 7 8 9];
% Creamos vectores
a=[1:20];
b=[1:0.1:20];
% Operaciones con matrices
    %Definici�n de las matrices
    A=[1 2 1; 4 6 5; 7 2 7];
    B=[1 1 2; 5 4 2; 2 4 3];
    %Suma
    C=A+B;
    %Multiplicaci�n
    D=A*B;
    %Potencia en�sima (tenemos que definir el n)
    n=3;
    E=A^n;
    %Suma de un escalar a todos los elementos de la matriz
    F=B+n;
    %Multiplicaci�n de un escalar por todos los elementos de una matriz
    G=n*A;
    %Traspuesta
    H=B';
    %Inversa
    I=inv(F);
    %Dimensi�n de una matriz
    L=size(A);
    %Obtenci�n de la primera fila de una matriz
    M=A(1,:);
    %Obtenci�n de la segunda fila de una matriz
    N=B(2,:);
    %Obtenci�n de la primera columna de una matriz
    O=A(:,1);
    %Obtenci�n del elemento (2,1) (segunda �la primera columna) de una matriz
    P=B(2,1);
    %Obtenci�n de los valores propios de una matriz
    K=eig(A);
    
