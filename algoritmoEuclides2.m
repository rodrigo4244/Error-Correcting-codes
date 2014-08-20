function [x] = algoritmoEuclides2 (x,y)
%Algoritmo de Euclides (vers�o com fun��es pr�prias
%Nome: Rodrigo Gon�alves de Oliveira Data: 13/08/2014

%Sess�o de c�lculos:
if (x == 0) | (y==0)
    disp('N�o existe MDC!')
else
    if (x == y)
        disp ('O MDC �: ')
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
