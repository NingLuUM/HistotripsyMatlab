function maize_init(usbpath)
%maize_init)
%   Initializes USB communications with FPGA.
%   com_number = number of virtual com port used
%   MaizeChip 2.0 Aug 2016 JJM

disp(['Initializing with USB port ',usbpath,'...'])

% clear any old connections on com port of interest
%global com; com = ['COM',num2str(com_number)];
q = instrfind;
if ~isempty(q)
    fclose(instrfind)
    delete(instrfind)
end

% setup port
maize = serial(usbpath,'BaudRate',9600);
fopen(maize)


pause(0.1)
disp('Initialization complete.')
end