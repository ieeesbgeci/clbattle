
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl11

RUN apt update && apt install  openssh-server sudo vim nano shc gcc man -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:AppY_f1zZ" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./buns /home/$LVL/buns

COPY ./rocky.sh /usr/local/bin/rocky.sh

COPY ./bun.md5  /usr/local/rocky/bun.md5

COPY ./instruction.txt /home/$LVL/instruction.txt

COPY ./required.txt /$LVL/required.txt

RUN chown -R  /home/$LVL/* $LVL &&\
    chmod -R 505 /home/$LVL/.config/scripts &&\
    chmod -R 505 /home/$LVL/help.txt &&\
    chmod -R 505 /home/$LVL/instruction.txt &&\
    mkdir /home/$LVL/dining_table &&\
    chmod  751 /usr/local/bin/rocky.sh &&\
    chmod  440 /usr/local/rocky/bun.md5 &&\
    chmod 777 -R /home/$LVL/dining_table &&\
    chmod 777 -R /home/$LVL/buns &&\
    service ssh start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export tries=4 && export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo 'alias rocky="source rocky.sh"' >> /home/$LVL/.bashrc &&\
    echo "python3 /clean.py && rm -rf /home/$LVL/dining_table/* && clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

