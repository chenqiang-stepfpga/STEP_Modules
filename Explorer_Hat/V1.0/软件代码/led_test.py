#!/usr/bin/python
#import commands
import time
import RPi.GPIO as GPIO

GPIO.setwarnings(False)

GPIO.setmode(GPIO.BCM)

def gpio_init():
    GPIO.cleanup()
    GPIO.setup(4,  GPIO.OUT)  #red 1
    GPIO.setup(23, GPIO.OUT)  #red 2
    GPIO.setup(18, GPIO.OUT)  #blue 1
    GPIO.setup(24, GPIO.OUT)  #blue 2
    GPIO.setup(27, GPIO.OUT)  #green 1
    GPIO.setup(22, GPIO.OUT)  #green 2
    GPIO.output(4 ,0)
    GPIO.output(23,0)
    GPIO.output(18,0)
    GPIO.output(24,0)
    GPIO.output(27,0)
    GPIO.output(22,0)

def rgb_shining():
    rgb_pin_num = [4,23,18,24,27,22]
    for display_rgb in rgb_pin_num:
        GPIO.output(display_rgb,1)
        time.sleep(0.5)

def rgb_all_on():
    GPIO.output(4, 1)
    GPIO.output(23,1)
    GPIO.output(18,1)
    GPIO.output(24,1)
    GPIO.output(27,1)
    GPIO.output(22,1)

def rgb_all_off():
    GPIO.output(4, 0)
    GPIO.output(23,0)
    GPIO.output(18,0)
    GPIO.output(24,0)
    GPIO.output(27,0)
    GPIO.output(22,0)

def gpio_pwm_init(rgb_num,frequency):
    pwm_rgb = GPIO.PWM(rgb_num,frequency)
    pwm_rgb.start(100)

def gpio_pwm(duty):
    pwm_rgb.ChangeDutyCycle(duty)

try:
    gpio_init()
    while(1):
        rgb_shining()
        rgb_all_off()
        time.sleep(0.5)
        rgb_all_on()
        time.sleep(0.5)
        rgb_all_off()
        time.sleep(0.5)

finally:
    GPIO.cleanup()

