function [r,q] = funcaoResto (x,y)
%Fun��o para calcular o resto de uma divis�o
%Nome: Rodrigo Gon�alves de Oliveira Data: 13/08/2014

%Sess�o de entradas:
k=1; q = 0;

%Sess�o de c�lculos:
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
%Sess�o de sa�das: