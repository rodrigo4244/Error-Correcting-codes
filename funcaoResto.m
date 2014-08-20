function [r,q] = funcaoResto (x,y)
%Função para calcular o resto de uma divisão
%Nome: Rodrigo Gonçalves de Oliveira Data: 13/08/2014

%Sessão de entradas:
k=1; q = 0;

%Sessão de cálculos:
if (x == y)
    r = 0;
    q = 1;
elseif (x > y)
    r = x;
    while (r > y)
        r = x - y*k;
        k = k + 1;
        q = q + 1;
    end
else
    r = x;
end
%Sessão de saídas: