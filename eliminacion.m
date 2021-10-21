%Eliminación de Gauss   Sistemas de ecuaciones (didáctica).
%   eliminacion(A,b) llenar
%       [A,b] = eliminacion(A,b)
%       A = matriz de coeficientes
%       b = vector independiente
%
%
%   See also Eliminación gaussiana parcial
%   
%   Copyright 2021 Universidad de Cuenca.
%   $Revision: 0.1 $  $Date: 2021/10/19 16:00 $
%   Built-in function.

function [A,b] = eliminacion(A,b)
  
  n = length(b);                           %longitud del vector independiente
  for j = 1:n-1                            %ciclo for para recorrer filas
    for k = j + 1:n                        %ciclo for para recorrer columnas
      ceros = -A(k,j)/A(j,j);              %número para obtener ceros 
      for m = j:n                          %ciclo for que recorre la fila a hacer ceros
        A(k,m) = A(k,m) + ceros * A(j,m);  %realiza las operaciones pertinentes
      endfor
      b(k) = b(k) + ceros * b(j);          %realiza las operaciones pertinentes en el    
    endfor                                 %vector independiente
  endfor
end
