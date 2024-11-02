---------------------------------
OPTION 1
---------------------------------
Set the Script to Run on Boot
- First download the next tool, so the script can type automatically on terminal
```bash
sudo apt-get install xdotool
```
- Open a terminal go to git path and create a bash :
```bash
cd /home/pi/git/
sudo nano startup_script.sh
```
- Copy paste the code from startup_script.sh and press ctrl + x and Enter

- Change mode to file so it can be executable
```bash
chmod +x startup_script.sh
```
- Open the rc.local file with the following command:
```bash
sudo nano /etc/rc.local
```
- Add the line below before [exit 0]
```bash
/home/pi/git/startup_script.sh &
```
- Save and close the file
---------------------------------
OPTION 2 
---------------------------------
- Open the crontab editor:
```
sudo crontab -e
```
- Add this line at the end of the file to run the script at startup:
```
@reboot /home/pi/git/startup_script.sh
```
Save and close the editor.
  ---------------------------------
- Test the Setup: Reboot your Raspberry Pi to test the setup:
```
sudo reboot

```
---------------------------------
Script Focus:                     
---------------------------------
xdotool will send keystrokes to the active window. Ensure the terminal where the executable runs remains focused.
Alternative for Direct Input: If the executable accepts input from standard input (stdin), you can replace the xdotool commands with an echo command:

```bash
echo -e "c\n1\n1" | ./your_executable
```
This sends the c, 1, and 1 keystrokes as input to the program directly.

---------------------------------










