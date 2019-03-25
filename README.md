# TELLO EDU WITH PYTHON
Here is a step by step tutorial of how to use your Tello EDU drone with Python.

Refer to Tello EDU SDK 2.0 for information about the commands you can send to your Tello EDU drone
https://dl-cdn.ryzerobotics.com/downloads/Tello/Tello%20SDK%202.0%20User%20Guide.pdf

Note: always check your drone's battery level, it will not take commands if battery is low.

Use Python 3


## TELLO SIMPLE FLIGHT
1. Trun on your Tello EDU drone (press the power button one time)
2. Connect your device to the Tello EDU wifi
3. Use the script simple_flight_tello.py to sync to your Tello EDU drone and send commands
Note: change command_list to make a custom flight plan to your drone


## TELLO SWARM
Before start:
- Make sure your wifi frequency is 2.4 GHz and the bandwidth is 20MHz
- Make sure your wifi accepts DHCP clients
Note: The scripts are set to connect 2 drones only, for more drones the script will need to be updated.
1. Trun on your Tello EDU drone (press the power button one time)
2. Connect your device to the Tello EDU wifi
3. Use the script swarm_flight_set_connection.py to make your tello connect to your local wifi by default. Here you will need to edit the script to add the wifi_name and wifi_password info.
4. Repeat steps 1 to 3 for each drone you want to connect in your swarm
5. Turn all drones on (press the power button one time)
6. Wait untill their LED is blinking yellow -- it means that the drones are connected to your wifi
7. Use the script swarm_flight_net_scan.py to find what are the ips of your drones
8. Add the drone's ips to tello_swarm_flight.py
9. Use the script swarm_flight_tello.py to sync to your Tello EDU drones and send commands
Note: change command_list_1 and command_list_2 to make a custom flight plan to your drone


## TELLO VIDEO
1. Create a virtual environment
2. Enter the following command: chmod 777 Tello_Video/install/Mac/mac_instal.sh
3. Run Tello_Video/install/Mac/mac_instal.sh 
4. Turn on your Tello EDU drone
5. Connect you device to Tello EDU wifi
6. Run the script Tello_Video/main.py