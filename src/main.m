% Lendo a base de dados a partir de um arquivo CSV
data_table = readtable('hex.csv');
data = data_table.OutletPressure;

% Definindo as frequências
Fc = 5000;  % Frequência de corte
Fs = 60000; % Frequência de amostragem

% Definindo a frequência angular e o tamanho do filtro
wc = 2*pi*Fc/Fs;
M = 50;

% Criando os coeficientes do filtro passa-baixa
h0 = wc/pi;
n1 = 1:M;
n2 = -M:-1;
hn_pos = (1./(pi*n1)).*sin(wc*n1);
hn_neg = (1./(pi*n2)).*sin(wc*n2);
hn = [hn_neg h0 hn_pos];

% Transformando a matriz em um vetor coluna
h = reshape(hn, [], 1);

% Aplicando o filtro à base de dados
filtered_data = conv(data, h, 'same');

% Plotando o resultado
subplot(2,1,1);
plot(data);
title('Sinal original');
subplot(2,1,2);
plot(filtered_data);
title('Sinal filtrado');

