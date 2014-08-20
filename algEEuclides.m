function [d,alpha3,beta3] = algEEuclides (x,y)
%Algoritmo de Euclides Estendido
%Nome: Rodrigo Gon�alves de Oliveira Data: 18/08/2014

%Sess�o de entradas:

[z,q] = funcaoResto (x,y);
c = y;
alpha1 = 1; beta1 = 0; alpha0 = 0; beta0 = 1;

%Sess�o de c�lculos:

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

%Sess�o de sa�das:
d = (x*alpha3) + (c*beta3);