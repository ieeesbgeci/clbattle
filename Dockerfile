#Single Build file
#====================================================================
FROM ubuntu:latest

LABEL "author"="v4zha"

#update and install necesary packages : )

RUN apt update && apt install  openssh-server sudo  vim nano gcc shc -y

#====================================================================

# level 0

RUN useradd -rm -d /home/lvl0 -s /bin/bash -g root lvl0 &&\
    echo "lvl0:clbattle" | chpasswd

COPY ./lvl0/scrolls /home/lvl0/scrolls

COPY  ./lvl0/scripts /home/lvl0/.config/scripts

COPY  ./story.py /home/lvl0/.config/scripts/story.py

COPY  ./lvl0/help.txt /home/lvl0/

RUN service ssh start &&\
    echo "alias start='python3 /home/lvl0/.config/scripts/task.py' " >> /home/lvl0/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl0/.config/scripts/assets/'" >> /home/lvl0/.bashrc &&\
    echo "alias help='clear && cat /home/lvl0/help.txt'" >> /home/lvl0/.bashrc &&\
    echo "clear && cat /home/lvl0/.config/scripts/assets/intro.txt" >> /home/lvl0/.bashrc 

#====================================================================

# level 1

RUN useradd -rm -d /home/lvl1 -s /bin/bash -g root lvl1 &&\
    echo "lvl1:vapachis_legacy" | chpasswd

COPY  ./lvl1/scripts /home/lvl1/.config/scripts

COPY  ./story.py /home/lvl1/.config/scripts/story.py

COPY  ./lvl1/help.txt /home/lvl1/

COPY ./lvl1/.b-nilavara /home/lvl1/.b-nilavara

RUN service ssh start &&\
    echo "alias start='python3 /home/lvl1/.config/scripts/task.py' " >> /home/lvl1/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl1/.config/scripts/assets/'" >> /home/lvl1/.bashrc &&\
    echo "alias help='clear && cat /home/lvl1/help.txt'" >> /home/lvl1/.bashrc  &&\
    echo "clear && cat /home/lvl1/.config/scripts/assets/intro.txt" >> /home/lvl1/.bashrc 

#====================================================================

# level 2

RUN useradd -rm -d /home/lvl2 -s /bin/bash -g root lvl2 &&\
    echo "lvl2:kunj1_kuRuV1" | chpasswd

COPY  ./lvl2/scripts /home/lvl2/.config/scripts

COPY  ./story.py /home/lvl2/.config/scripts/story.py

COPY  ./lvl2/help.txt /home/lvl2/

COPY ./lvl2/task.sh /home/lvl2/task.sh

RUN chmod +x /home/lvl2/task.sh &&\
    /home/lvl2/task.sh  &&\
    rm /home/lvl2/task.sh &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl2/.config/scripts/task.py' " >> /home/lvl2/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl2/.config/scripts/assets/'" >> /home/lvl2/.bashrc &&\
    echo "alias help='clear && cat /home/lvl2/help.txt'" >> /home/lvl2/.bashrc &&\
    echo "clear && cat /home/lvl2/.config/scripts/assets/intro.txt" >> /home/lvl2/.bashrc 

#====================================================================

# level 3

RUN useradd -rm -d /home/lvl3 -s /bin/bash -g root lvl3 &&\
    echo "lvl3:k4rukaVay4l_kuruv1" | chpasswd

COPY  ./lvl3/scripts /home/lvl3/.config/scripts

COPY  ./story.py /home/lvl3/.config/scripts/story.py

COPY  ./lvl3/help.txt /home/lvl3/

COPY ./lvl3/file_gen.py /home/lvl3/file_gen.py

RUN python3 /home/lvl3/file_gen.py &&\
rm /home/lvl3/file_gen.py &&\
service ssh start &&\
echo "alias start='python3 /home/lvl3/.config/scripts/task.py' " >> /home/lvl3/.bashrc &&\
echo "export ASSET_DIR='/home/lvl3/.config/scripts/assets/'" >> /home/lvl3/.bashrc &&\
echo "alias help='clear && cat /home/lvl3/help.txt'" >> /home/lvl3/.bashrc &&\
echo "clear && cat /home/lvl3/.config/scripts/assets/intro.txt" >> /home/lvl3/.bashrc 

#====================================================================

# level 4

RUN useradd -rm -d /home/lvl4 -s /bin/bash -g root lvl4 &&\
echo "lvl4:ambala_pr4vu" | chpasswd

COPY  ./lvl4/scripts /home/lvl4/.config/scripts

COPY  ./story.py /home/lvl4/.config/scripts/story.py

COPY  ./lvl4/help.txt /home/lvl4/

COPY ./lvl4/task.sh /home/lvl4/task.sh

RUN chmod +x /home/lvl4/task.sh &&\
/home/lvl4/task.sh &&\
rm /home/lvl4/task.sh &&\
service ssh start &&\
echo "alias start='python3 /home/lvl4/.config/scripts/task.py' " >> /home/lvl4/.bashrc &&\
echo "export ASSET_DIR='/home/lvl4/.config/scripts/assets/'" >> /home/lvl4/.bashrc &&\
echo "alias help='clear && cat /home/lvl4/help.txt'" >> /home/lvl4/.bashrc &&\
echo "clear && cat /home/lvl4/.config/scripts/assets/intro.txt" >> /home/lvl4/.bashrc 

#====================================================================

# level 5

RUN useradd -rm -d /home/lvl5 -s /bin/bash -g root lvl5 &&\
    echo "lvl5:k4tTu_mynh4" | chpasswd

COPY  ./lvl5/scripts /home/lvl5/.config/scripts

COPY  ./story.py /home/lvl5/.config/scripts/story.py

COPY  ./lvl5/help.txt /home/lvl5/

COPY ./lvl5/task.sh /home/lvl5/task.sh

RUN chmod +x /home/lvl5/task.sh &&\
    /home/lvl5/task.sh &&\
    rm /home/lvl5/task.sh &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl5/.config/scripts/task.py' " >> /home/lvl5/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl5/.config/scripts/assets/'" >> /home/lvl5/.bashrc &&\
    echo "alias help='clear && cat /home/lvl5/help.txt'" >> /home/lvl5/.bashrc &&\
    echo "clear && cat /home/lvl5/.config/scripts/assets/intro.txt" >> /home/lvl5/.bashrc

#====================================================================

# level 6

RUN useradd -rm -d /home/lvl6 -s /bin/bash -g root lvl6 &&\
    echo "lvl6:v3gam_0od1Kk0" | chpasswd

COPY  ./lvl6/scripts /home/lvl6/.config/scripts

COPY  ./story.py /home/lvl6/.config/scripts/story.py

COPY  ./lvl6/help.txt /home/lvl6/

COPY ./lvl6/.lock.txt /home/lvl6/.lock.txt

COPY  ./lvl6/task.c /home/lvl6/task.c

RUN service ssh start &&\
    echo "alias start='python3 /home/lvl6/.config/scripts/task.py' " >> /home/lvl6/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl6/.config/scripts/assets/'" >> /home/lvl6/.bashrc &&\
    echo "alias help='clear && cat /home/lvl6/help.txt'" >> /home/lvl6/.bashrc &&\
    echo "clear && cat /home/lvl6/.config/scripts/assets/intro.txt" >> /home/lvl6/.bashrc &&\
    gcc /home/lvl6/task.c -O3 -Wno-unused-result -o /home/lvl6/lever &&\
    chown lvl6 /home/lvl6/lever &&\
    echo "chmod 444 /home/lvl6/lever" >> /home/lvl6/.bashrc &&\
    rm /home/lvl6/task.c

#====================================================================

# level 7

RUN useradd -rm -d /home/lvl7 -s /bin/bash -g root lvl7 &&\
    echo "lvl7:p4rippu_v4da" | chpasswd

COPY  ./lvl7/scripts /home/lvl7/.config/scripts

COPY  ./story.py /home/lvl7/.config/scripts/story.py

COPY  ./lvl7/help.txt /home/lvl7/

COPY ./lvl7/fountain.sh /usr/local/bin/fountain.sh

COPY ./lvl7/vellam.md5  /usr/local/fountain/vellam.md5

COPY ./lvl7/vellam /home/lvl7/storage/vellam

RUN service ssh start &&\
    mkdir /home/lvl7/fountain &&\
    shc -f /usr/local/bin/fountain.sh -U -o /usr/local/bin/fountain &&\
    rm /usr/local/bin/fountain.* &&\
    chmod  751 /usr/local/bin/fountain &&\
    chmod  440 /usr/local/fountain/vellam.md5 &&\
    chmod 777 -R /home/lvl7/storage &&\
    chmod 777 -R /home/lvl7/fountain &&\
    echo "alias start='python3 /home/lvl7/.config/scripts/task.py' " >> /home/lvl7/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl7/.config/scripts/assets/'" >> /home/lvl7/.bashrc &&\
    echo "alias help='clear && cat /home/lvl7/help.txt'" >> /home/lvl7/.bashrc &&\
    echo "touch /home/lvl7/fountain/vellam && rm /home/lvl7/fountain/vellam && clear && cat /home/lvl7/.config/scripts/assets/intro.txt" >> /home/lvl7/.bashrc 

#====================================================================

# level 8

RUN useradd -rm -d /home/lvl8 -s /bin/bash -g root lvl8 &&\
    echo "lvl8:p4rzm_p0r1" | chpasswd

COPY  ./lvl8/scripts /home/lvl8/.config/scripts

COPY  ./story.py /home/lvl8/.config/scripts/story.py

COPY  ./lvl8/help.txt /home/lvl8/

RUN useradd -rm -d /home/gopan -s /bin/bash -g root gopan &&\
    echo "gopan:agentX" | chpasswd &&\
    echo -e "============\null1_v4da\n============\n" > /home/gopan/rahasyam &&\
    echo -e "thaka thaka..thalayude_vilayattu..\n [agentX]\n" > /home/lvl8/.thaka_thaka.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl8/.config/scripts/task.py' " >> /home/lvl8/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl8/.config/scripts/assets/'" >> /home/lvl8/.bashrc &&\
    echo "alias help='clear && cat /home/lvl8/help.txt'" >> /home/lvl8/.bashrc &&\
    echo "clear && cat /home/lvl8/.config/scripts/assets/intro.txt" >> /home/lvl8/.bashrc 

#====================================================================

#Start ssh daemon

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

#====================================================================
