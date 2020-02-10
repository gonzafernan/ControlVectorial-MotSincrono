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

