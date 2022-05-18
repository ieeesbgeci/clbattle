
FROM ubuntu:latest

LABEL "author"="v4zha"

RUN apt update && apt install  openssh-server sudo -y vim nano 

RUN useradd -rm -d /home/lvl0 -s /bin/bash -g root lvl0 

RUN  echo 'lvl0:clbattle' | chpasswd

COPY ./scrolls /home/lvl0/scrolls

COPY  ./scripts /home/lvl0/.scripts

COPY  ./help.txt /home/lvl0/

RUN service ssh start

RUN echo 'alias start="python3 /home/lvl0/.scripts/task.py" ' >> /home/lvl0/.bashrc

RUN echo 'export ASSET_DIR="/home/lvl0/.scripts/assets/"' >> /home/lvl0/.bashrc

RUN echo 'alias help="clear && cat /home/lvl0/help.txt"' >> /home/lvl0/.bashrc 

RUN echo 'clear && cat /home/lvl0/.scripts/assets/intro.txt' >> /home/lvl0/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

