%% Parametros Nominales
dBdH0 = 0.005; % Gradiente antiesterico cuando Hes cero
B1 = 1.49;     % Punto de densidad de flujo en la curva antiesterica B-H 
H1 = 1000;     % Intensidad de campo correspondiente
c = 0.1;       % Coeficiente de magnetización reversible, c.
K = 200;       % Coeficiente de acoplamiento magnetico,K
alpha = 1e-4;  % Facor de acoplamiento entre dominios

%% Defina las perturbaciones nominales de los valores nominales
Parameters =    {'c','K','\alpha'};
Perturbations = [ 4   1   1];

%% Generacion  del grafico de referencia de la curva B-H 

% Reuse la figura si existe,caso contrario crea una nueva figura 
if ~exist('h1_elec_inductor_hysteresis', 'var') || ...
        ~isgraphics(h1_elec_inductor_hysteresis, 'figure')
    h1_elec_inductor_hysteresis = figure('Name', 'elec_inductor_hysteresis');
end
figure(h1_elec_inductor_hysteresis)
clf(h1_elec_inductor_hysteresis)

deltas = [0 0 0]; % Ninguna perturbacion a c, K y alpha
sim('elec_inductor_hysteresis')

% Solo grafica los resultados reunidos despues de que los resultados transitorios se han resuelto 
simlog_t = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.B.series.time;
t_inds_nom = find(simlog_t>=(2/60));

Bnom = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.B.series.values;
Hnom = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.H.series.values;
simlog_handles(1)=subplot(2,2,1);
plot(Hnom(t_inds_nom),Bnom(t_inds_nom),'LineWidth',1)
ylabel('B (T)')
title('Curva B-H (Nominal)')

%% Perturvacion de c,K y alpha individualmente y grafico de las curvas B-H resultantes
for i=1:3
    deltas = [0 0 0];
    deltas(i) = Perturbations(i);
    sim('elec_inductor_hysteresis')
    B = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.B.series.values;
    H = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.H.series.values;
    
    % Solo grafica los resultados reunidos despues de que los resultados transitorios se han resuelto 
    simlog_t1 = simlog_elec_inductor_hysteresis.Nonlinear_Inductor.inductor.B.series.time;
    t_inds_test = find(simlog_t1>=(2/60));
    
    simlog_handles(i+1)=subplot(2,2,i+1);
    plot(Hnom(t_inds_nom),Bnom(t_inds_nom),'LineWidth',1)
    hold on
    plot(H(t_inds_test),B(t_inds_test),'LineWidth',1)
    hold off
    
    title(['Curva B-H(' Parameters{i} ')']);
    text(0.5,0.95,[Parameters{i} ' es ' num2str(1+Perturbations(i)) ' veces su valor nominal'],...
        'HorizontalAlignment','center','Units','Normalized')
    grid
    
    if(i>=2)
        xlabel('H (A/m)')
    end
    if(i==2)
        ylabel('B (T)')
    end
end

linkaxes(simlog_handles, 'xy')

clear simlog_t simlog_t1 t_inds_nom t_inds_test
clear simlog_handles
