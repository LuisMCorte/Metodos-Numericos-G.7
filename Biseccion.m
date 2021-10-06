%Método de bisección
%Parametros:
    %Funcion: f
    %Intervalo: [a,b]
    %Tolerancia: e
    %Iteraciones: i
    %Funcion matematica: fx

function [] = Biseccion(a,b)
  fx = @(x)x^3-7*x^x+14*x-6;          %Funcion a evaluar 
  e = 1;                   %Error o tolerancia
  i = 1;                   %contador(iteraciones)
  
  while (e>0.1&&i<=20)     %Limite de iteraciones    
  fa = fx(a);              %Evaluación de la función 
  fb = fx(b);
  m = (a+b)/2;             %Punto Medio
  e = abs((m-b)/m)*100;    %estimación del error
  
  if(fa*fb<0)              %Si se cumple la condción de Bolsano
                            
    fm = fx(m);
    if(fm*fa<0)              %Si cumple esta caodción m toma el valor de m 
    b=m;
    else                     %Si no a toma el valor de b y b el valor de m
    a=b;
    b=m;
    endif
  else                    %Si no el metodo no funciona
    disp('Error no hay raís en el intervalo');
    e=0;
  endif
  m                       %Resultados en pantalla
  e;
  i=i+1;                  %aumento del contador
  endwhile
endfunction
