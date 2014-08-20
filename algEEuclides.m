function [d,alpha3,beta3] = algEEuclides (x,y)
%Algoritmo de Euclides Estendido
%Nome: Rodrigo Gonçalves de Oliveira Data: 18/08/2014

%Sessão de entradas:

[z,q] = funcaoResto (x,y);
c = y;
alpha1 = 1; beta1 = 0; alpha0 = 0; beta0 = 1;

%Sessão de cálculos:

while (z ~= 0)
    
    alpha3 = alpha1 - (q*alpha0)
    alpha1 = alpha0;
    alpha0 = alpha3;
    
    beta3 = beta1 - (q*beta0)
    beta1 = beta0;
    beta0 = beta3;
    
    disp('Novo Resto e Quociente')
    [a,q] = funcaoResto(y,z)
    y = z;
    z = a;    
end

%Sessão de saídas:
d = (x*alpha3) + (c*beta3);