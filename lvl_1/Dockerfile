
FROM ubuntu:latest

LABEL "author"="v4zha"

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/lvl1 -s /bin/bash -g root lvl1

RUN  echo 'lvl1:vapachis_legacy' | chpasswd

COPY  ./scripts /home/lvl1/.config/scripts

COPY  ./help.txt /home/lvl1/

COPY ./.b-nilavara /home/lvl1/.b-nilavara

RUN service ssh start

RUN echo 'alias start="python3 /home/lvl1/.config/scripts/task.py" ' >> /home/lvl1/.bashrc

RUN echo 'export ASSET_DIR="/home/lvl1/.config/scripts/assets/"' >> /home/lvl1/.bashrc

RUN echo 'alias help="clear && cat /home/lvl1/help.txt"' >> /home/lvl1/.bashrc 

RUN echo 'clear && cat /home/lvl1/.config/scripts/assets/intro.txt' >> /home/lvl1/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

