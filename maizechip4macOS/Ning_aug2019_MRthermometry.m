% Setup and Focusing Script

addpath('/Users/histotripsylabuser/Desktop/MR-ARFItest code/MACmaizechip2p0')
MACmaize_init('/dev/tty.usbserial-A603JPNQ')
%%
% Set FPGA Pattern (for geometric focusing)
bstop
LEDflashtest

%%
b_set_chipmem_wloc(1)
write_array_pattern_16bit(500*ones(1,32)) % sets all chargetimes to 5 us
b_set_chipmem_wloc(2)
write_array_pattern_16bit(500*ones(1,32)) % sets all delays to zero

%% Define Program for Setup
bstop
b_set_imem_wloc(0)
a_loadincr_chipmem(1,1)
a_wait(1)
a_set_amp(0)

a_loadincr_chipmem(1,2)
a_wait(1)

a_set_phase(0)

a_start_loop(1,10000000)
    a_set_trig(0)
    a_waitsec(250e-6)
    a_fire(0)
    a_waitsec(100e-3)    % PRF
    a_set_trig(0)
a_end_loop(1)

a_halt

bgo
    






