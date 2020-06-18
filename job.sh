#!/home/z/Desktop/Tick-Tick/env/bin/python3

activate_this = "/home/z/Desktop/Tick-Tick/env/bin/activate_this.py"
with open(activate_this) as f:
        code = compile(f.read(), activate_this, 'exec')
        exec(code, dict(__file__=activate_this))

import os
import time
# play sound
def sound(path):
    from pydub import AudioSegment
    from pydub.playback import play
    sound1 = AudioSegment.from_file(path,format="wav")
    play(sound1)


# ticktick
def count(rep,wait):
    for i in range(0,rep):
        tick=wait*4
        for j in range(0,tick):
            time.sleep(15)        
            os.system("echo -n '\a'")
        sound(os.getcwd() + "/static/"+str(i)+".wav")

if __name__ == "__main__":
    count(60,6)

