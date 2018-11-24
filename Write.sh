#!/usr/bin/env python
import sys
import time
import serial 
count = 0
LED = 0
for arg in sys.argv:
    if (count == 1):
       LED = arg
    else:
       count = 1
ser = serial.Serial('/dev/ttyACM0', 9600, 8, 'N', 1, timeout=1)
ser.write("1".encode())
ser.readline()
time.sleep(1)
