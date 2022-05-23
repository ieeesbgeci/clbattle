
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl9

RUN apt update && apt install  openssh-server sudo vim nano zip gcc man -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:ull1_v4da" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./task.c /home/$LVL/task.c

COPY ./required.txt /$LVL/required.txt

RUN gcc /home/$LVL/task.c -O3 -Wno-unused-result -o /usr/local/bin/mull_chedi &&\
    rm /home/$LVL/task.c &&\
    chown -R  /home/$LVL/* $LVL &&\
    chmod  705 /usr/local/bin/mull_chedi &&\
    mkdir /home/$LVL/treasure &&\
    echo -e "================\nk4ttan_Ch4ya\n================\n" > /home/$LVL/treasure/secret &&\
    cd /home/$LVL/ && zip -r --password thur4nNu_v4a treasure.zip treasure &&\
    rm -rf /home/$LVL/treasure &&\
    chmod -R 505 /home/$LVL/.config/scripts &&\
    chmod -R 505 /home/$LVL/help.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "mull_chedi &">>/home/$LVL/.bashrc &&\
    echo "python3 /clean.py && touch treasure && rm -rf /home/$LVL/treasure && clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

