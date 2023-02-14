% Define as frequências de passagem e de amostragem
f1 = 12e3;
f2 = 16e3;
fs = 60e3;

% Cria o filtro usando a função 'fir1'
b = fir1(100, [2*f1/fs, 2*f2/fs], 'bandpass');

% Plota o filtro usando a função 'freqz'
[h, w] = freqz(b, 1);
figure;
plot(w/pi*fs/2, 20*log10(abs(h)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bandpass Filter Frequency Response');
grid on;

