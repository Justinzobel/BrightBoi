# BrightBoi
A simple bash / zenity / xrandr brightness adjuster

### Installation Instructions
1. Install required items (Solus): `sudo eopkg install zenity xrandr`
1. Install required items (Ubuntu): `sudo apt-get install zenity x11-xserver-utils`
2. Grab bash script: `sudo wget -O /usr/bin/BrightBoiGUI https://raw.githubusercontent.com/Justinzobel/BrightBoi/master/brightness.sh`
3. Grab menu entry: `sudo wget -O /usr/share//applications/BrightBoi.desktop https://raw.githubusercontent.com/Justinzobel/BrightBoi/master/BrightBoi.desktop`
4. Make BrightBoi executable: `sudo chmod +x /usr/bin/BrightBoiGUI`
5. Update Desktop Database: `sudo update-desktop-database`
