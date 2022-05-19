
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl6

RUN apt update && apt install  openssh-server sudo vim nano gcc -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:v3gam_0od1Kk0" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ../story.py /home/$LVL/.config/scripts/story.py

COPY  ./help.txt /home/$LVL/

COPY ./.lock.txt /home/$LVL/.lock.txt

COPY  ./task.c /home/$LVL/task.c

RUN service ssh start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc &&\
    gcc /home/$LVL/task.c -O3 -Wno-unused-result -o /home/$LVL/lever &&\
    echo "chmod u-x /home/$LVL/lever" >> /home/$LVL/.bashrc &&\
    rm /home/$LVL/task.c

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

