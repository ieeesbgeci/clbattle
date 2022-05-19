
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl1

RUN apt update && apt install  openssh-server sudo  vim nano -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:vapachis_legacy" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ../story.py /home/$LVL/.config/scripts/story.py

COPY  ./help.txt /home/$LVL/

COPY ./.b-nilavara /home/$LVL/.b-nilavara

RUN service ssh start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc  &&\
    echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

