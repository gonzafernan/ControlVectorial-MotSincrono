%% Parámetros equivalentes de la carga mecánica

% Inercia de la carga
Jl = 0.2520;
DJl = 0.1260;
% Fricción viscosa rotacional de la carga
bl = 0;
Dbl = 0.0630;

%% Relación de reducción total
r = 314.3008;

%% Parámetros mecánicos del motor

% Momento de inercia
Jm = 3.1e-6;
% Coeficiente de fricción viscosa
bm = 1.5e-5;

%% Parámetros equivalentes del subsistema mecánico

% Momento de inercia equivalente
Jeq = Jm + Jl/r^2;
% Coeficiente de fricción viscosa equivalente
beq = bm + bl/r^2;

%% Parámetros subsistema electromagnético

% Pares de polos
Pp = 3;
% Flujo magnético equivalente de imanes concatenado por espiras del
% bobinado del estator observado desde el rotor
lambda_rm = 0.01546;
% Inductancia de estator en el eje directo
Ld = 6.6e-3;
% Inductancia de estator en el eje en cuadratura
Lq = 5.8e-3;
% Inductancia de dispersión de estator
Lls = 0.8e-3;
% Resistencia del estator por fase, a 40°C
Rs = 1.02;

%% Parámetros subsistema térmico

% Capacitancia térmica de estator
Cts = 1.091;
% Resistencia térmica estator-ambiente
Rts_amb = 55;

%% Condiciones del entorno

% Temperatura ambiente máxima
Tamb_max = 40;
