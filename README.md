# Requirements 
In order for the configuration to install correctly, you should have installed Arch Linux with the base requirements. 
No graphical environement needed, everything comes with the config and the intallation script. To run the install script on your 
blank Arch machine, execute the following command : 
````
./install.sh
````
You may need to enter confirmations for tools during the installation, simply press 'O' or 'y', whichever is asked. 
The system should then reboot itself automatically. 

# Warning
When executing *install.sh*, you should be connected as the user you want to apply the configutation to. Otherwise, the .config files won't work, as they will be placed in another
home directory.
