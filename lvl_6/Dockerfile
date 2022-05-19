
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl6

RUN apt update && apt install  openssh-server sudo -y vim nano gcc

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root ${LVL}

RUN  echo "$LVL:v3gam_0od1Kk0" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./task.sh /home/$LVL/task.sh

COPY ./.lock.txt /home/$LVL/.lock.txt

COPY  ./task.c /home/$LVL/task.c

RUN chmod +x /home/$LVL/task.sh

RUN /home/$LVL/task.sh

RUN rm /home/$LVL/task.sh

RUN service ssh start

RUN echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/${LVL}/.bashrc

RUN echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/${LVL}/.bashrc

RUN echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/${LVL}/.bashrc 

RUN echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/${LVL}/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

