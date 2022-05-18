import sys,time,os
class storyTeller:
    def __init__(self,count,delay=0.05):
        self.delay=delay
        self.count=count
        self.asset_dir=os.getenv('ASSET_DIR')

    def type_delay(self,text):
        for char in text:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(self.delay)
    
    def get_story(self,start,end):
        story={}
        for i in range(start,end):
            story[i]=self.get_scene(i)
        return story 

    def print_story(self,start=1,end=None):
        if not end:
            end=self.count
        story=self.get_story(start,end+1)
        for i in range(start,end+1):
            os.system('clear')
            print(story[i]['ascii'])
            self.type_delay(story[i]['plot'])
            print("\n Press Enter to continue ")
            input()
            os.system('clear')

    def get_scene(self,i):
            dir=self.asset_dir+str(i)
            ascii=""
            plot=""
            try:
                with open(dir+"/ascii.txt") as file:
                    ascii=file.read()
                with open(dir+"/plot.txt") as file:
                    plot=file.read()
            except Exception as err:
                print(err)
            scene=  {'ascii':ascii,'plot':plot}  
            return scene
