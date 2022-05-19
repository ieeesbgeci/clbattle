from story import storyTeller 
import sys
if len(sys.argv)>1 and sys.argv[1]=="fast":
    st=storyTeller(5,fast=True)
else:
    st=storyTeller(5)
st.print_story()

