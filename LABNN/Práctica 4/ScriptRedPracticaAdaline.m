ada = linearlayer;

ada = configure(ada, [0;0],0);

ada.inputweights{1,1}.initFcn='rands';

ada = init(ada);

%adIn = [0 0 0 1 1 1 1; 0 1 1 0 0 1 1; 1 0 1 0 1 0 1];
%adOut = [1 2 3 4 5 6 7];

%question 1
adIn=[0 0 0 0 1 1 1 1; 0 0 1 1 0 0 1 1; 0 1 0 1 0 1 0 1];
adOut = [0 0 0 0 1 1 1 1; 0 0 0 0 0 0 1 1];

ada = newlind(adIn,adOut);

ada.iw{1,1}