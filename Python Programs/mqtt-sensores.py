#!/usr/bin/env python

import paho.mqtt.publish as publish
#import grovepi
import time

temp_sensor = 0

def readTemperature():
    while True:
        try:
            temperature = 25 #grovepi.temp(temp_sensor, '1,2')
            publish.single("office/temperature", '{0:0.1f}'.format(temperature), hostname="192.168.0.19")
            print("publicando valores...")
            time.sleep(5)
        except KeyboardInterrupt:
            break
        except IOError:
            print ("IOError happened")

readTemperature()