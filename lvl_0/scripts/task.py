from story import storyTeller 
import sys
if len(sys.argv)<1 and sys.argv[1]=="fast":
    st=storyTeller(2,fast=True)
else:
    st=storyTeller(2)
st.print_story()
