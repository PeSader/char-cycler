import keyboard
import typing

# pseudo-code
'''
if key is accentable:
    if key = key_pressed_before and time_elapsed in range(200ms, 1000ms):
        send delete
        send next(cycle(key))
    if different key was pressed before:
        start list 

variables would be: key_pressed_before, time_elapsed_between_keypresses, current_cycle
'''

keyboard.hook(cycler)

def cycler(ke: keyboard.KeyboardEvent):
    #a global variable will store the latest
    #and the previous keys that were pressed
    global list_of_keys
    list_of_keys = []


'''
use sudo python3, not sudo python to test it!

ã = keyboard.press('shift + `'); keyboard.release('shift'); keyboard.release('`'); keyboard.send('a')
á = keyboard.send(40); keyboard.send('a')
à = keyboard.send('` + a')

â = keyboard.send('shift + 6, a')
Â = keyboard.send('shift + 6 + a')
'''