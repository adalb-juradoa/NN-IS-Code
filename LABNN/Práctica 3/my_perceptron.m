% Inputs percetron.
% Step 2. 2 inputs
%perce = newp([-2 2; -2 2],1);
% Step 22. 4 inputs
perce = newp([-4 4; -4 4],1);


% --------------------------------------------------


% Random weights initialization
perce.inputweights{1,1}.initFcn='rands';
% 100 training epochs
perce.trainParam.epochs=100;
% Perceptron initialization and initial weights. Step 4-5 
%perce=init(perce);
%perce.iw{1}



% --------------------------------------------------


% Input and output variables
% Step 6
%adIn=[ 1.5 1 1 1;.5 1.5 3 4];
%adOut=[0 1 1 1];

% Step 14
%adIn=[ 1.5 1 1 1 0 0 1;.5 1.5 3 4 1 2 -1];
%adOut=[0 1 1 1 1 1 0];

% Step 20
%adIn=[ -1.9 -1.6 -1 -0.5 -0.5 0.3 1 1.3 1.5 1.9; 0 -3.1 -3.5 -2.1 -0.7 -1.1 0.1 2.4 1.5 7];
%adOut=[1 1 0 0 1 0 0 1 0 1];

% Step 21
adIn=[ -1 -2 -1 -1 1 1 2 2; -4 -4 -3.5 -2 0 1.5 2 4];
adOut=[0 1 0 1 0 1 0 1];


% --------------------------------------------------



% Perceptron initialization and initial weights.
perce=init(perce);
perce.iw{1}

% Perceptron training
perce=train(perce, adIn, adOut);
% Weights and bias after training
perce.iw{1}
perce.b{1}

%Predictions
simulado=sim(perce,adIn);

% Plot real data and predictions
figure(1)
plotpv(adIn, adOut);
plotpc(perce.IW{1}, perce.b{1});

