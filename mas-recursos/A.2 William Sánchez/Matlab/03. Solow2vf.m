%Aplicación del modelo de Solow 2.0
%==================================================================
s=0.18; % Tasa de ahorro%
delta=0.03; % Depreciación%
alfa=0.4; %Participación del capital en el producto%
ni=0.1; % Crecimiento poblacional%
g=0.02; % Progreso técnico%
kss=((s/(ni+g+delta))^(1/(1-alfa))); % steady state%
k0=0.1; % Capital inicial%
T=200;
% Inicio de rutina%
capital = zeros(T,1);
capital(1) = k0;
% En tiempo discreto%
% Cálculo de la serie de capital%
for i=1:(T-1)
capital(i+1) = s*capital(i)^alfa + (1-(delta+g+ni))*capital(i);
end
% Gráficos%
figure(1);
plot(capital,'r');
%plot(capital./kss,'r');
title('Grafico Capital');