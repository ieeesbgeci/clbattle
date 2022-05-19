
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl2

RUN apt update && apt install  openssh-server sudo -y vim nano 

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL

RUN  echo "$LVL:kunj1_kuRuV1" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./task.sh /home/$LVL/task.sh

RUN chmod +x /home/$LVL/task.sh

RUN /home/$LVL/task.sh

RUN rm /home/$LVL/task.sh

RUN service ssh start

RUN echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc

RUN echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc

RUN echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc 

RUN echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

