clear a;
a=arduino();
leer='D4';
escribir='D2';

muestras=input('Ingresa el número de muestras a tomar:   ')


entrada = zeros(2, muestras)

fprintf('Ingresa los datos correspondientes a la primera entrada:   ')

for fila1=1:muestras    
    bit=readVoltage(a,'A0')
    entrada1(1,fila)=bit;
     aux=input(' ');
end

fprintf('Ingresa los datos corrspondientes a la segunda entrada:   ')

for fila1=1:muestras    %se llenan las muestras correspondientes al potenciometro 0 
    bit=readVoltage(a,'A0')
    entrada2(2,fila1)=bit;
     aux=input(' ');
end

fprintf('Ingresa los datos corrspondientes a la salida esperada o target:   ')

for fila1=1:muestras    %se llenan las muestras correspondientes al potenciometro 0  
    bit=readVoltage(a,'A0')
    target(fila1)=bit;
    
     aux=input(' ');
end

entradas=[entrada1;entrada2];

ada=newlind(entradas,target);

verificador=input('Quieres verificar alguna entrada? (1 para si, 0 para no):   ')

while verificador==1
    fprintf('Ingresa vector a verificar (formato [dato1; dato2]:  ')
    verificador=input(' ');
    salida=sim(ada,verificador)
    
   % writeDigitalPin(a,escribir,led)
    verificador=input('Quieres verificar alguna entrada?:   ')
end
