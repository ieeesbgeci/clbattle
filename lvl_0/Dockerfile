
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl0

RUN apt update && apt install  openssh-server sudo  vim nano -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:clbattle" | chpasswd

COPY ./scrolls /home/$LVL/scrolls

COPY  ./scripts /home/$LVL/.scripts

COPY  ./help.txt /home/$LVL/

RUN service ssh start &&\
    echo "alias start='python3 /home/$LVL/.scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "clear && cat /home/$LVL/.scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

