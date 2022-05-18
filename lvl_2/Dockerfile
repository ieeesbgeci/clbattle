
FROM ubuntu:latest

LABEL "author"="v4zha"

RUN apt update && apt install  openssh-server sudo -y vim nano 

RUN useradd -rm -d /home/lvl2 -s /bin/bash -g root lvl2

RUN  echo 'lvl2:kunj1_kuRuV1' | chpasswd

COPY  ./scripts /home/lvl2/.config/scripts

COPY  ./help.txt /home/lvl2/

COPY ./folder_gen.sh /home/lvl2/folder_gen.sh

RUN chmod +x /home/lvl2/folder_gen.sh

RUN /home/lvl2/folder_gen.sh

RUN rm /home/lvl2/folder_gen.sh

RUN service ssh start

RUN echo 'alias start="python3 /home/lvl2/.config/scripts/task.py" ' >> /home/lvl2/.bashrc

RUN echo 'export ASSET_DIR="/home/lvl2/.config/scripts/assets/"' >> /home/lvl2/.bashrc

RUN echo 'alias help="clear && cat /home/lvl2/help.txt"' >> /home/lvl2/.bashrc 

RUN echo 'clear && cat /home/lvl2/.config/scripts/assets/intro.txt' >> /home/lvl2/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

