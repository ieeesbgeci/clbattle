
FROM ubuntu:latest

LABEL "author"="v4zha"

ARG LVL=lvl10

RUN apt update && apt install  openssh-server sudo vim nano vsftpd ftp -y

RUN useradd -rm -d /home/$LVL -s /bin/bash -g root $LVL &&\
    echo "$LVL:k4ttan_Ch4ya" | chpasswd &&\
    echo "root:yoyo-payya" | chpasswd 

COPY  ./scripts /home/$LVL/.config/scripts

COPY  ./help.txt /home/$LVL/

COPY ./vanaram_ftp.txt /home/$LVL/vanaram_ftp.txt

COPY ./vsftpd.conf /etc/vsftpd.conf

COPY ./vsftpd.u_list /etc/vsftpd.u_list

COPY ./start.sh     /start.sh

RUN useradd -rm -d /home/vanaram -s /bin/bash -g root vanaram &&\
    echo "vanaram:par4nju_ther1la" | chpasswd &&\
    chmod +x start.sh &&\
    mkdir /ftp &&\
    echo "AppY_f1zZ" > /ftp/rahasyam &&\
    chmod -R 555 /home/$LVL/.config/scripts &&\
    chmod -R 555 /home/$LVL/help.txt &&\
    chmod -R 555 /home/$LVL/vanaram_ftp.txt &&\
    service ssh start &&\
    service vsftpd start &&\
    echo "alias start='python3 /home/$LVL/.config/scripts/task.py' " >> /home/$LVL/.bashrc &&\
    echo "export ASSET_DIR='/home/$LVL/.config/scripts/assets/'" >> /home/$LVL/.bashrc &&\
    echo "alias help='clear && cat /home/$LVL/help.txt'" >> /home/$LVL/.bashrc &&\
    echo "touch /home/$LVL/rahasyam && rm /home/$LVL/rahasyam && clear && cat /home/$LVL/.config/scripts/assets/intro.txt" >> /home/$LVL/.bashrc 

EXPOSE 22

# CMD ["/usr/sbin/sshd","-D"]

CMD ["/start.sh"]

