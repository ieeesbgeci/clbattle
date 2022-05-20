
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl7

RUN apt update && apt install  openssh-server sudo vim nano -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:p4rippu_v4da" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./fountain /usr/local/bin/fountain

COPY ./vellam.md5  /usr/local/fountain/vellam.md5

COPY ./vellam /home/lvl7/storage/vellam


RUN service ssh start &&\
    mkdidr /home/lvl7/fountain &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

