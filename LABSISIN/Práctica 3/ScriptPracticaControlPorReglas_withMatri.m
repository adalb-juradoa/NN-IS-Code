clear a;
a=arduino('COM3', 'Mega2560');
clear s
luz='D3'
%s = servo(a, 'D6')
 angle=(1-0)/5;
 
 upper_limit = 9;
 
 matrix = zeros(upper_limit,3);

for i=1:upper_limit % Step 7
        voltaje=readVoltage(a,'A0')
        voltaje2=readVoltage(a,'A1')
        fis=readfis('difuso de prueba.fis');
        z=evalfis(fis,[voltaje, voltaje2])
        writePWMDutyCycle(a,luz,z);
        matrix(i,:) = [voltaje voltaje2 z]; %Question 3 
        pause(3); % matrix with upper_limit rows and 
                  % 3 colums (voltaje, voltaje2, z)
    end