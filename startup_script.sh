# Open a terminal and execute a specific program
#!/bin/bash

# Navigate to the directory where the executable is located
cd /home/pi/git/Payload-SDK/build/bin

# Run the executable (replace 'your_executable' with the actual name of your file)
sudo ./dji_sdk_demo_on_jetson_cxx
sleep 20

# Simulate pressing 'c', '1', and '1' after 2 second delay 
xdotool type "c"
xdotool key Return
sleep 2
xdotool type "1"
xdotool key Return
sleep 2
xdotool type "1"
xdotool key Return




