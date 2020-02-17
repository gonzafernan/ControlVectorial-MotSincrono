%% Análisis de Estabilidad a lazo abierto para Sistema LTI
%% Determinación de polos y ceros

% Gráfico con polos y cero en el plano imaginario
figure(1)
colours = [0 0 0;
           0 0 1;
           1 0 0];

z = tf([Lq Rs], 1);

for i=1:length(beq_range)
    s = tf(1, [Jeq_range(i)*Lq (beq_range(i)*Lq+Jeq_range(i)*Rs) (3/2*lambda_rm^2*Pp^2) 0]);
    h = pzplot(s, z, 'g');
    set(h.allaxes.Children(2).Children, 'MarkerSize', 12, 'MarkerEdgeColor', colours(i,:), 'linewidth',3);
    set(h.allaxes.Children(1).Children, 'MarkerSize', 12, 'MarkerEdgeColor', 'green', 'linewidth',3);
    grid on;
    hold on;
end

for k=1:length(Rs_var)
    z = tf([Lq Rs_var(k)], 1);
    for i=1:length(beq_range)
        s = tf(1, [Jeq_range(i)*Lq (beq_range(i)*Lq + Jeq_range(i)*Rs_var(k)) (3/2*lambda_rm^2*Pp^2) 0]);
        h = pzplot(s, z, 'g');
        set(h.allaxes.Children(2).Children, 'MarkerSize', 10, 'MarkerEdgeColor', colours(i, :));
        set(h.allaxes.Children(1).Children, 'MarkerSize', 10, 'MarkerEdgeColor', 'green');
        grid on;
        hold on;
    end 
end
hold off;

%% Evaluación de la estabilidad. Determinación de la frecuencia natural y el amortiguamiento

