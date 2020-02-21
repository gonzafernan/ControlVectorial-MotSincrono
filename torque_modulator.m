% Diseño, Análisis y Simulación de Controlador de Movimiento en Cascada con
% Modulador de Torque equivalente

%% Modulador de Torque equivalente 
% Controlador interno de corriente/torque
p = 5000;

% Cálculo de ganancias proporcionales
disp("Ganancias proporcionales:");
Rqp = Lq*p;     disp("Rqp = " + Rqp);
Rdp = Ld*p;     disp("Rdp = " + Rdp);
R0p = Lls*p;    disp("R0p = " + R0p);