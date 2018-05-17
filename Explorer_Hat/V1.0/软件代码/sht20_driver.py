#!/usr/bin/python  
#import commands
import time
import os
import subprocess

os.system("i2cset -y 1 0x40 0xFE")
time.sleep(0.1)

os.system("i2cset -y 1 0x40 0xF3")
time.sleep(0.1)
temp_high = subprocess.check_output(['i2cget','-y','1','0x40'])
time.sleep(0.1)
temp_low  = subprocess.check_output(['i2cget','-y','1','0x40'])
temp_h = temp_high[0:4]
temp_l = temp_low[0:4]
temp_h_int = int(temp_h,16)
temp_l_int = int(temp_l,16)
temp = (temp_h_int<<8)|temp_l_int
T = -46.85 + 175.72/65536*temp

os.system("i2cset -y 1 0x40 0xF5")
time.sleep(0.1)
humd_high = subprocess.check_output(['i2cget','-y','1','0x40'])
time.sleep(0.1)
humd_low  = subprocess.check_output(['i2cget','-y','1','0x40'])
humd_h = temp_high[0:4]
humd_l = temp_low[0:4]
humd_h_int = int(temp_h,16)
humd_l_int = int(temp_l,16)
humd = (temp_h_int<<8)|temp_l_int
RH = -6.0+125.0/65536*humd

print "The current temperature is",T 
print "The current humidity is",RH 