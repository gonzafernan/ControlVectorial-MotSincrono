A = [
    0   1                   0;
    0   -beq/Jeq            (3/2)*Pp*lambda_rm/Jeq;
    0   -Pp*lambda_rm/Lq    -Rs/Lq];

B = [0; 0;  1/Lq];

C1 = [1  0   0];
C2 = [0  1   0];

%% Análisis de Controlabilidad del Sistema LTI

CC = [B      A*B     A^2*B];

disp("Rango matriz de Controlabilidad: " + rank(CC));

%% Análisis de Observabilidad del Sistema LTI

disp("Observabilidad desde posición angular: ");
OO = [C1;    C1*A;    C1*A^2];
disp("    Ranggo matriz de Observabilidad: " + rank(OO));

disp("Observabilidad desde velocidad angular: ");
OO = [C2;    C2*A;    C2*A^2];
disp("    Ranggo matriz de Observabilidad: " + rank(OO));
