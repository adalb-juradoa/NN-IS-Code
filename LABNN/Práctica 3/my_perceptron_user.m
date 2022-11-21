newdata = input('¿Introucir nuevos datos?: (Si: 1, No: 0)\n');


while newdata == 1
    
    close all; 
    % User input data
    entrada1 = input('Ingresa los datos de la entrada 1 como un vector \n');
    entrada2 = input('Ingresa los datos de la entrada 2 como un vector \n');
    adIn = vertcat(entrada1, entrada2);
    adOut = input('Ingresa las etiquetas como un vector \n');
    
    % Perceptron definition, initialization and training
    perce = newp([-2 2; -2 2],1);
    perce.inputweights{1,1}.initFcn='rands';
    perce.trainParam.epochs=100;
    perce=init(perce);
    perce=train(perce, adIn, adOut);
    behavior = input('¿Ver Comportamiento?: (Si: 1, No: 0) \n');
    if behavior == 1
        % Visualize behavior
        disp(['Pesos entrenados: ', num2str(perce.iw{1})])
        disp(['Bias entrenado: ', num2str(perce.b{1})])
        figure(1)
        plotpv(adIn, adOut);
        plotpc(perce.IW{1}, perce.b{1});
    end
    
    newdata = input('¿Introucir nuevos datos?: (Si: 1, No: 0) \n');
    
end


    
