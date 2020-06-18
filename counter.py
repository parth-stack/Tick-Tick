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
            print("\a")
        sound(os.getcwd() + "/static/"+str(i)+".wav")

if __name__ == "__main__":
    count(60,6)
