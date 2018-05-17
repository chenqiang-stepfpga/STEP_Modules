import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setup(6, GPIO.IN,pull_up_down=GPIO.PUD_UP)   #1=BCM6=LEFT
GPIO.setup(13,GPIO.IN,pull_up_down=GPIO.PUD_UP)   #2=BCM13=CENTER
GPIO.setup(12,GPIO.IN,pull_up_down=GPIO.PUD_UP)   #4=BCM12=UP
GPIO.setup(16,GPIO.IN,pull_up_down=GPIO.PUD_UP)   #3=BCM16=DOWN
GPIO.setup(19,GPIO.IN,pull_up_down=GPIO.PUD_UP)   #5=BCM19=RIGHT

while(1):
    input_left   = GPIO.input(6)
    input_center = GPIO.input(13)
    input_up     = GPIO.input(12)
    input_down   = GPIO.input(16)
    input_right  = GPIO.input(19)
    if input_left == 1:
        print('Key_left Pressed')    
        time.sleep(0.2)
    if input_center == 1:
        print('Key_center Pressed')  
        time.sleep(0.2)
    if input_up == 1:
        print('Key_up Pressed')
        time.sleep(0.2)
    if input_down == 1:
        print('Key_down Pressed')
        time.sleep(0.2)  
    if input_right == 1:
        print('Key_right Pressed')
        time.sleep(0.2) 

