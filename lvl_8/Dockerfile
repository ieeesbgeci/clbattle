
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl8

RUN apt update && apt install  openssh-server sudo vim nano -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:p4rzm_p0r1" | chpasswd

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

RUN useradd -rm -d /home/gopan -s /bin/bash -g root gopan &&\
    echo "gopan:agentX" | chpasswd &&\
    echo -e "============\null1_v4da\n============\n" > /home/gopan/rahasyam &&\
    echo -e "thaka thaka..thalayude_vilayattu..\n [agentX]\n" > /home/$LVL/.thaka_thaka.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

