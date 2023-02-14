b = [0.1, 0.2, 0.3];
x = [1, 0, 0, 2, 0, 1, 4, 3];

n = length(b);
m = length(x);
y = zeros(1, n + m - 1);

for i = 1:n + m - 1
    for j = max(1, i - m + 1):min(i, n)
        y(i) = y(i) + b(j) * x(i - j + 1);
    end
end


figure(1);
subplot(2, 1, 1);
stem(x);
title('Entrada');

subplot(2, 1, 2);
stem(y);
title('Saida');

