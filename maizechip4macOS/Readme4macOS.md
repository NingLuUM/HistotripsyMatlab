 Edited by Ning Lu  - September 2019
 
 
 
 This version of Maizechip is specifically for macOS users. MacOS has different configuration for USB devices from Windows. 
 Instead of COM ports, it identifies all USB devices through tty ports, so no COM port number is assigned to the USB devices, 
 and that's why the old maizechip relying on "instrfind('Ports',com_number)" would not work on macOS.
 
 
 To use this version on your own Mac, please do as the following instructions:
 
 
 1. Download and install FTDI USB VCP driver.


After installing the correct driver, plug in your USB-Serial adapter, and open a Terminal session (Applications/Utilities). 
Enter the command ls /dev/cu.*, you should be able to see something like "/dev/cu.usbserial". If you do see this, 
that means you have the correct driver and your USB device is recognized.
 
 2. Open a terminal and type "ls /dev/tty.usbserial*" to see the exact path of the USB device. 
 
 For example, my device is at "/dev/tty.usbserial-A603JPNQ". This is the path I put in the MACmaize_init() function.
 
 
 3. Run the example script and it should work!
 
 
 For any questions or comments please let me know
 
 
 Enjoy coding on macOS :D!
 
