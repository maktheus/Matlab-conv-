% Define a frequência de corte e de amostragem
fc = 12e3;
fs = 60e3;

% Cria o filtro usando a função 'fir1'
b = fir1(100, 2*fc/fs, 'high');

% Plota o filtro usando a função 'freqz'
[h, w] = freqz(b, 1);
figure;
plot(w/pi*fs/2, 20*log10(abs(h)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Highpass Filter Frequency Response');
grid on;

