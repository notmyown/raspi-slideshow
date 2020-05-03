#Button Mock ups
import RPi.GPIO as GPIO
import time
import os
import pynput
from pynput.keyboard import Key, Controller

B_Prev=8
B_Next=12
B_Pause=10

keyboard = Controller()

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)

def setup_btn(btn):
  GPIO.setup(btn, GPIO.IN, pull_up_down=GPIO.PUD_UP)


def do_btn(btn, key):
  keyboard.press(key)
  time.sleep(0.5)


def loop():
  prev_input = 0
  while True:
    time.sleep(0.25)
    if not GPIO.input(B_Prev):
      do_btn(B_Prev, 't')
    if not GPIO.input(B_Pause):
      do_btn(B_Pause, 'h')
    if not GPIO.input(B_Next):
      do_btn(B_Next, 'u')
     

setup_btn(B_Prev)
setup_btn(B_Next)
setup_btn(B_Pause)

loop()
