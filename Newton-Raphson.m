% Autores:Pablo Bermeo
%         Pablo Cardenas
%         Luis Miguel Corte
%         Ronald Criollo
%
% Fecha:  2021/10/08
% Descripcion: Método de Newton-Raphson

%NewtonRaphson(fun,dx,x0,tol=0.001,iter=1000) 
%       [iteraciones,solucion] = Newton(f,dx,x0)
%       fun = función a evaluar
%       dx =  derivada de la funcion fun
%       x0 =  valor inicial para x
%       tol = tolerancia
%       iter = número máximo de iteraciones

function NewtonRaphson()
  
  % Condiciones Iniciales 
  f = @(x) x^2-4;
  dx = @(x) 2*x;
  x0 = 3;
  x = linspace(1,5, 1000);
  y = x.^2-4;
  
  %Impresión en pantalla de resultados
  [iteraciones,solucion] = Newton(f,dx,x0);
  if iteraciones > 0;
    fprintf('Numero de iteraciones: %d\n',iteraciones);
    fprintf('La solución es: %f\n', solucion)
  else
    fprintf('Error')
  endif
  
  %Grafico de la funcione
  plot(x,y)
  axis([-10 10 -10 10]);
  %grid on
  str1 = num2str('*RAIZ',0);
  text(solucion,0,str1,'Color','red')
end


function [iteraciones,solucion] = Newton(fun,dx,x0,tol=0.001,iter=1000)
  i = 0;
  
  x=x0;
  f = fun(x);                      % Evaluación de la funcion

%Condiciones 
  while abs(f) > tol && i < iter    
    try
      x = x - (f)/dx(x);           %Formula del método de Newton-Raphson
    catch
      fprintf('Error dx = 0');     %El resultado debe ser diferente de cero
      exit(1)
    end_try_catch
    f = fun(x);                    %Toma el nuevo valor de x
    i++;                           %Contador de iteraciones
   
  endwhile
  
%Resultados
 iteraciones = i;
 solucion = x;
end
