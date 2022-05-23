
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl7

RUN apt update && apt install  openssh-server sudo vim nano shc gcc man -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:p4rippu_v4da" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./fountain.sh /usr/local/bin/fountain.sh

COPY ./vellam.md5  /usr/local/fountain/vellam.md5

COPY ./vellam /home/lvl7/storage/vellam

COPY ./hidden_dungeon /home/lvl7/

RUN service ssh start &&\
    chmod -R 555 /home/$LVL/.config/scripts &&\
    chmod -R 555 /home/$LVL/help.txt &&\
    mkdir /home/lvl7/fountain &&\
    shc -f /usr/local/bin/fountain.sh -U -o /usr/local/bin/fountain &&\
    rm /usr/local/bin/fountain.* &&\
    chmod  751 /usr/local/bin/fountain &&\
    chmod  440 /usr/local/fountain/vellam.md5 &&\
    chmod 555 -R /home/lvl7/storage &&\
    chmod 555 -R /home/lvl7/fountain &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "touch /home/lvl7/fountain/vellam && rm /home/lvl7/fountain/vellam && clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

