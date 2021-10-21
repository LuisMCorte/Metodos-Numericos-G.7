%Sustitucion   Sistemas de ecuaciones (didáctica).
%   susttucion(An,bn) llenar
%      [x] = susttucion(An,bn)
%       An = Matriz triangular inferior
%       bn =  vector independiente
%
%
%   See also Eliminación gaussiana parcial
%   
%   Copyright 2021 Universidad de Cuenca.
%   $Revision: 0.1 $  $Date: 2021/10/19 17:00 $
%   Built-in function.

function [x] = susttucion(An,bn)     
  n = length(bn);                    %longitud del vector independiente
  x(n) = bn(n) / An(n,n);            %Primer valor de solución
  
  for i = n-1:-1:1                  %ciclo for para recorrer filas
    sum = 0;                          
    for j = i+1:n                    %ciclo for para recorrer columnas
      sum = sum + An(i,j)*x(j);      %Operaciones pertinentes
    endfor
    x(i) = (bn(i)-sum)/An(i,i);      %Hallamos la solucion con el vector independiente
  endfor
end
