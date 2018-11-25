#!/usr/bin/env python
import time
import serial
ser = serial.Serial('/dev/ttyACM0', 9600, 8, 'N', 1, timeout=1)
while (True):
  x = ser.readline()
  if (x != ""):
    print x
