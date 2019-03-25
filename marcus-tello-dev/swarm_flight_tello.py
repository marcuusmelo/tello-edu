# This example script demonstrates how to use Python to fly Tello in a box mission
# This script is part of our course on Tello drone programming
# https://learn.droneblocks.io/p/tello-drone-programming-with-python/

# Import the necessary modules
import socket
import threading
import time

# IP and port of Tello
tello1_address = ('192.168.0.103', 8889)
tello2_address = ('192.168.0.105', 8889)

# IP and port of local computer
local1_address = ('', 9010)
local2_address = ('', 9011)

# Create a UDP connection that we'll send the command to
sock1 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock2 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Bind to the local address and port
sock1.bind(local1_address)
sock2.bind(local2_address)

# Send the message to Tello and allow for a delay in seconds
def send(sock, tello_address, message):
    # Try to send the message otherwise print the exception
    try:
        sock.sendto(message.encode(), tello_address)
        print("Sending message: " + message)
    except Exception as e:
        print("Error sending: " + str(e))

# Receive the message from Tello
def receive(sock):
    # Continuously loop and listen for incoming messages
    while True:
        # Try to receive the message otherwise print the exception
        try:
            response, ip_address = sock.recvfrom(128)
            print("Received message: " + response.decode(encoding='utf-8'))
            #response, ip_address = sock2.recvfrom(128)
            #print("Received message: " + response.decode(encoding='utf-8'))
        except Exception as e:
            # If there's an error close the socket and break out of the loop
            sock.close()
            print("Error receiving: " + str(e))
            break

# Create and start a listening thread that runs in the background
# This utilizes our receive functions and will continuously monitor for incoming messages
receiveThread1 = threading.Thread(target=receive, args=[sock1])
receiveThread1.daemon = True
receiveThread1.start()

receiveThread2 = threading.Thread(target=receive, args=[sock2])
receiveThread2.daemon = True
receiveThread2.start()

# command lists bellow in the format of (command, delay)
# note: make sure both command lists have the same length
command_list_1 = ['command', 'battery?']#, 'takeoff', 'up 50', 'land']
command_list_2 = ['command', 'battery?']#, 'takeoff', 'flip f', 'land']
delay_list = [3, 3]#, 3, 3, 3]

if len(command_list_1) != len(command_list_2) or len(command_list_1) != len(delay_list):
    print('command lists should have the same number of commands')
    exit()

# Loop and create each leg of the box
for i in range(len(command_list_1)):
    send(sock1, tello1_address, command_list_1[i])
    send(sock2, tello2_address, command_list_2[i])

    time.sleep(delay_list[i])

# Print message
print("Mission completed successfully!")

# Close the socket
sock1.close()
sock2.close()
