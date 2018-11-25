#!/usr/bin/env python
import sys
import time
import serial 
count = 0
LED = 0
PIN = 0
for arg in sys.argv:
    if (count == 1):
       LED = arg.split(':')[1]
       PIN = arg.split(':')[0]
    else:
       count = 1
ser = serial.Serial('/dev/ttyACM0', 9600)
print(LED)
print(PIN)
if  (PIN == '13'):
  if (LED == '0'):
    ser.write(b'0')
  elif (LED == '1'):
    ser.write(b'1')
elif (PIN == '12'):
  if (LED == '3'):
    ser.write(b'3')
  elif (LED == '2'):
    ser.write(b'2')
ser.close()
