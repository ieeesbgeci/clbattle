from story import storyTeller 
import sys
if sys.argv[1] and sys.argv[1]=="fast":
    st=storyTeller(4,fast=True)
else:
    st=storyTeller(4)
st.print_story()

