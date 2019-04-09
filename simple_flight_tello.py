#
# Tello Python3 Control Demo 
#
# http://www.ryzerobotics.com/
#
# 1/1/2018

import threading 
import socket
import sys
import time


host = ''
port = 9000
locaddr = (host,port) 


# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

tello_address = ('192.168.10.1', 8889)

sock.bind(locaddr)

def recv():
    count = 0
    while True: 
        try:
            data, server = sock.recvfrom(1518)
            print(data.decode(encoding="utf-8"))
        except Exception:
            print ('\nExit . . .\n')
            break


print ('TELLO SIMPLE FLIGHT Python3 Demo.')


#recvThread create
recvThread = threading.Thread(target=recv)
recvThread.start()

# # # # # # # # # # # ATENTION # # # # # # # # # # # 
# HERE IS YOUR FLIGHT PLAN AKA COMMAND LIST        #
# Edit the list called command_list to make a      #
# custom flight plan to your Tello EDU Drone       #
#                                                  #
# Here is a list of sample commands:               #
#  takeoff, land, up 50, down 50, left 50,         #
#  right 50, forward 50, back 50, flip b,          #
#  stop, battery?, command                         #
#                                                  #
# Note1: the first one always need to be 'command' #
# Note2: pass all commands as strings (between '') #
# # # # # # # # # # # #  # # # # # # # # # # # # # # 
command_list = ['command', 'battery?', 'takeoff', 'land']

for msg in command_list:

    msg = msg.encode(encoding="utf-8") 
    sent = sock.sendto(msg, tello_address)

    time.sleep(3)

sock.close() 