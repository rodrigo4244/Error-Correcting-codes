function [x] = algoritmoEuclides2 (x,y)
%Algoritmo de Euclides (versão com funções próprias
%Nome: Rodrigo Gonçalves de Oliveira Data: 13/08/2014

%Sessão de cálculos:
if (x == 0) | (y==0)
    disp('Não existe MDC!')
else
    if (x == y)
        disp ('O MDC é: ')
        disp (x)
    elseif (x > y)
        while (y ~= 0)
            r = funcaoResto (x,y);
            x = y;
            y = r;
        end
    else
      while (x ~= 0)
          r = funcaoResto(y,x);
          y = x;
          x = r;
      end
      x = y;
    end
end
