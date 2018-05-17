#!/usr/bin/python  
#import commands
import time
import smbus

bus = smbus.SMBus(1)

#Apds9901 device address
addr = 0x39

#config adps9901-write byte data
bus.write_byte_data(addr,0x80|0x00,0x00)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x01,0xff)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x02,0xff)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x03,0xff)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x0e,0x01)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x0f,0x20)
time.sleep(0.08)
bus.write_byte_data(addr,0x80|0x00,0x0f)
time.sleep(0.08)

#read luminous intensity,Infrared intensity,distance data
while(1):
    lux_data = bus.read_word_data(addr,0xa0|0x14)
    time.sleep(0.1)
    inf_data = bus.read_word_data(addr,0xa0|0x16)
    time.sleep(0.1)
    dis_data = bus.read_word_data(addr,0xa0|0x18)
    time.sleep(0.1)
    print "luminous intensity=",lux_data,"infrared intensity=",inf_data,"distance=",dis_data
