% Define as frequências e amplitudes das senoides
f1 = 40e3;
f2 = 14e3;
A1 = 1;
A2 = 0.5;

% Define o tempo de amostragem e o vetor de tempo
fs = 100e3;
t = 0:1/fs:0.01;

% Cria as senoides
s1 = A1*sin(2*pi*f1*t);
s2 = A2*sin(2*pi*f2*t);

% Mistura as senoides
s = s1 + s2;

% Filtra o sinal misturado com o filtro passa-alta projetado em (1)
b1 = fir1(100, 2*12e3/fs, 'high');
sf1 = filter(b1, 1, s);

% Filtra o sinal misturado com o filtro passa-faixa projetado em (2)
b2 = fir1(100, [2*12e3/fs, 2*16e3/fs], 'bandpass');
sf2 = filter(b2, 1, s);

% Plota o sinal original e os sinais filtrados no domínio do tempo
figure;
subplot(3,1,1);
plot(t, s);
title('Sinal Original');
xlabel('Tempo (s)');
ylabel('Amplitude');
subplot(3,1,2);
plot(t, sf1);
title('Sinal Filtrado com o Filtro Passa-Alta');
xlabel('Tempo (s)');
ylabel('Amplitude');
subplot(3,1,3);
plot(t, sf2);
title('Sinal Filtrado com o Filtro Passa-Faixa');
xlabel('Tempo (s)');
ylabel('Amplitude');

% Plota o sinal original e os sinais filtrados no domínio da frequência
n = length(s);
f = (0:n-1)*(fs/n);
sfft = fft(s)/n;
sf1fft = fft(sf1)/n;
sf2fft = fft(sf2)/n;
figure;
subplot(3,1,1);
plot(f/1e3, 20*log10(abs(sfft)));
title('Espectro do Sinal Original');
xlabel('Frequência (kHz)');
ylabel('Magnitude (dB)');
subplot(3,1,2);
plot(f/1e3, 20*log10(abs(sf1fft)));
title('Espectro do Sinal Filtrado com o Filtro Passa-Alta');
xlabel('Frequência (kHz)');
ylabel('Magnitude (dB)');
subplot(3,1,3);
plot(f/1e3, 20*log10(abs(sf2fft)));
title('Espectro do Sinal Filtrado com o Filtro Passa-Faixa');
xlabel('Frequência (kHz)');
ylabel('Magnitude (dB)');

