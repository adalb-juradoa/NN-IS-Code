%SCRIPT 1

%Script que genera una matriz de entrenamiento para una rede neuronal.Se
%compone de tres columnas donde van tres valores de resistencias entre 1 y
%100 ohms, y una columna que define la operación de serie o paralelo de las
%resistencias.
%También calcula el vector indicador, que es el que funciona como tarjet
%dentro del entrenamiento

rng('shuffle');
iteraciones= input('Ingresa el número de muestras a tomar:  ');
matrizEntrenamiento=randi([1 100],iteraciones,3);

equivalente=zeros(1,iteraciones);
tarjetResistencia=zeros(1,iteraciones);

for i=1:iteraciones
    
    if i<=iteraciones/2
        
        tarjetResistencia(i)=0;
        equivalente(i)=matrizEntrenamiento(i,1)+matrizEntrenamiento(i,2)+matrizEntrenamiento(i,3);
        
    else
        tarjetResistencia(i)=1;
        equivalente(i)=1/((1/matrizEntrenamiento(i,1))+(1/matrizEntrenamiento(i,2))+(1/matrizEntrenamiento(i,3)));
    end
end

%equivalente=round(equivalente);

matrizEntrenamiento=transpose(matrizEntrenamiento);

matrizEntrenamiento=[equivalente; matrizEntrenamiento];

%disp(matriz)

%disp(indicador)



% SCRIPT 2

matrizSerie=randi([1 100],iteraciones,3);
matrizParalelo=randi([1 100],iteraciones,3);
 serie=zeros(1,iteraciones);
 paralelo=zeros(1,iteraciones);

for i=1:iteraciones
       
        serie(i)=matrizSerie(i,1)+matrizSerie(i,2)+matrizSerie(i,3);
        paralelo(i)=1/((1/matrizParalelo(i,1))+(1/matrizParalelo(i,2))+(1/matrizParalelo(i,3)));
end

matrizSerie=transpose(matrizSerie);
matrizParalelo=transpose(matrizParalelo);

%paralelo=round(paralelo);

matrizSerie=[serie; matrizSerie];
matrizParalelo=[paralelo; matrizParalelo];