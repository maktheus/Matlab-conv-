# Filtro Passa-Baixa FIR em MATLAB

Este é um exemplo de implementação de um filtro passa-baixa FIR em MATLAB. O filtro é projetado para atenuar sinais com frequências acima de uma frequência de corte desejada, permitindo a passagem de sinais com frequências abaixo dessa frequência de corte.

## Pré-requisitos

- MATLAB

## Como executar o código

1. Certifique-se de que o arquivo de dados CSV esteja na mesma pasta que o arquivo MATLAB.
2. Abra o arquivo MATLAB.
3. Modifique as variáveis `filename`, `Fc` e `Fs` de acordo com o arquivo de dados e as especificações do filtro desejadas.
4. Execute o código.

## Como funciona o filtro

O filtro passa-baixa FIR é um filtro de resposta finita ao impulso. Ele é projetado para atenuar sinais com frequências acima de uma frequência de corte desejada, permitindo a passagem de sinais com frequências abaixo dessa frequência de corte.

O filtro é projetado em duas etapas. A primeira etapa é o projeto do filtro em si, que envolve o cálculo dos coeficientes que definem a resposta em frequência desejada. Esses coeficientes são armazenados em uma matriz chamada `hn`.

A segunda etapa é a aplicação do filtro ao sinal de entrada. Isso é feito usando a função `conv` do MATLAB, que é usada para convoluir o sinal de entrada com os coeficientes do filtro. O resultado é um sinal de saída que é uma versão filtrada do sinal de entrada.

O sinal de entrada e o sinal de saída são plotados em um gráfico usando a função `plot` do MATLAB. O sinal original é plotado na parte superior do gráfico e o sinal filtrado é plotado na parte inferior.

## Autores

- [Nome do autor](https://github.com/nomedoautor)

## Licença

Este projeto está licenciado sob a licença MIT - consulte o arquivo [LICENSE.md](LICENSE.md) para obter detalhes.
