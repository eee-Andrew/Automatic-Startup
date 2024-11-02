Set the Script to Run on Boot
- First download the next tool, so the script can type automatically on terminal
```bash
sudo apt-get install xdotool
```
- Change mode to file so it can be executable
```bash
chmod +x startup_script.sh
```
Open the rc.local file with the following command:
```bash
sudo nano /etc/rc.local
```
Add the line below before [exit 0]
```bash
/path/to/startup_script.sh &
```






