#Single Build file
#====================================================================
FROM ubuntu:latest

LABEL "author"="v4zha"

#update and install necesary packages : )

RUN apt update && apt install  openssh-server sudo  vim nano gcc shc zip vsftpd ftp curl man -y

COPY ./start.sh /start.sh

COPY ./clean.py /clean.py

RUN chmod +x /start.sh

#====================================================================

# level 0

RUN useradd -rm -d /home/lvl0 -s /bin/bash -g root lvl0 &&\
    echo "lvl0:clbattle" | chpasswd

COPY ./lvl0/scrolls /home/lvl0/scrolls

COPY  ./lvl0/scripts /home/lvl0/.config/scripts

COPY  ./story.py /home/lvl0/.config/scripts/story.py

COPY  ./lvl0/help.txt /home/lvl0/

COPY ./lvl0/required.txt /lvl0/required.txt

RUN service ssh start &&\
    chown lvl0 -R  /home/lvl0  &&\
    chmod -R 505 /home/lvl0/.config/scripts &&\
    chmod -R 505 /home/lvl0/help.txt &&\
    chmod -R 505 /home/lvl0/scrolls  &&\
    echo "alias start='python3 /home/lvl0/.config/scripts/task.py' " >> /home/lvl0/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl0/.config/scripts/assets/'" >> /home/lvl0/.bashrc &&\
    echo "alias help='clear && cat /home/lvl0/help.txt'" >> /home/lvl0/.bashrc &&\
    echo "python3 /clean.py lvl0 && clear && cat /home/lvl0/.config/scripts/assets/intro.txt" >> /home/lvl0/.bashrc 

#====================================================================

# level 1

RUN useradd -rm -d /home/lvl1 -s /bin/bash -g root lvl1 &&\
    echo "lvl1:vapachis_legacy" | chpasswd

COPY  ./lvl1/scripts /home/lvl1/.config/scripts

COPY  ./story.py /home/lvl1/.config/scripts/story.py

COPY  ./lvl1/help.txt /home/lvl1/

COPY ./lvl1/.b-nilavara /home/lvl1/.b-nilavara

COPY ./lvl1/required.txt /lvl1/required.txt

RUN useradd -rm -d /home/lvl2 -s /bin/bash -g root lvl2 &&\
    echo "lvl2:kunj1_kuRuV1" | chpasswd

RUN useradd -rm -d /home/lvl3 -s /bin/bash -g root lvl3 &&\
    echo "lvl3:k4rukaVay4l_kuruv1" | chpasswd

RUN useradd -rm -d /home/lvl4 -s /bin/bash -g root lvl4 &&\
echo "lvl4:ambala_pr4vu" | chpasswd

RUN useradd -rm -d /home/lvl5 -s /bin/bash -g root lvl5 &&\
    echo "lvl5:k4tTu_mynh4" | chpasswd

RUN useradd -rm -d /home/lvl6 -s /bin/bash -g root lvl6 &&\
    echo "lvl6:v3gam_0od1Kk0" | chpasswd

RUN service ssh start &&\
    chown lvl1 -R  /home/lvl1 &&\
    chmod -R 505 /home/lvl1/.config/scripts &&\
    chmod -R 505 /home/lvl1/help.txt &&\
    chmod -R 505 /home/lvl1/.b-nilavara &&\
    echo "alias start='python3 /home/lvl1/.config/scripts/task.py' " >> /home/lvl1/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl1/.config/scripts/assets/'" >> /home/lvl1/.bashrc &&\
    echo "alias help='clear && cat /home/lvl1/help.txt'" >> /home/lvl1/.bashrc  &&\
    echo "python3 /clean.py lvl1 && clear && cat /home/lvl1/.config/scripts/assets/intro.txt" >> /home/lvl1/.bashrc &&\ 
    chmod +x /home/lvl2/task.sh &&\
    /home/lvl2/task.sh  &&\
    rm /home/lvl2/task.sh &&\
    chown lvl2 -R  /home/lvl2  &&\
    chmod -R 505 /home/lvl2/.config/scripts &&\
    chmod -R 505 /home/lvl2/help.txt &&\
    chmod -R 505 /home/lvl2/doors &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl2/.config/scripts/task.py' " >> /home/lvl2/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl2/.config/scripts/assets/'" >> /home/lvl2/.bashrc &&\
    echo "alias help='clear && cat /home/lvl2/help.txt'" >> /home/lvl2/.bashrc &&\
    echo "python3 /clean.py lvl2 && clear && cat /home/lvl2/.config/scripts/assets/intro.txt" >> /home/lvl2/.bashrc  &&\
    python3 /home/lvl3/file_gen.py &&\
    rm /home/lvl3/file_gen.py &&\
    chown lvl3 -R  /home/lvl3 &&\
    chmod -R 505 /home/lvl3/.config/scripts &&\
    chmod -R 505 /home/lvl3/help.txt &&\
    chmod 505 /home/lvl3/spell_book.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl3/.config/scripts/task.py' " >> /home/lvl3/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl3/.config/scripts/assets/'" >> /home/lvl3/.bashrc &&\
    echo "alias help='clear && cat /home/lvl3/help.txt'" >> /home/lvl3/.bashrc &&\
    echo "python3 /clean.py lvl3 && clear && cat /home/lvl3/.config/scripts/assets/intro.txt" >> /home/lvl3/.bashrc &&\
    chmod +x /home/lvl4/task.sh &&\
    /home/lvl4/task.sh &&\
    rm /home/lvl4/task.sh &&\
    chown lvl4 -R  /home/lvl4 &&\
    chmod -R 505 /home/lvl4/.config/scripts &&\
    chmod -R 505 /home/lvl4/help.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl4/.config/scripts/task.py' " >> /home/lvl4/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl4/.config/scripts/assets/'" >> /home/lvl4/.bashrc &&\
    echo "alias help='clear && cat /home/lvl4/help.txt'" >> /home/lvl4/.bashrc &&\
    echo "python3 /clean.py lvl4 && touch /home/lvl4/rahasyam && rm /home/lvl4/rahasyam &&  clear && cat /home/lvl4/.config/scripts/assets/intro.txt" >> /home/lvl4/.bashrc &&\
    chmod +x /home/lvl5/task.sh &&\
    /home/lvl5/task.sh &&\
    rm /home/lvl5/task.sh &&\
    chown lvl5 -R  /home/lvl5 &&\
    chmod -R 505 /home/lvl5/.config/scripts &&\
    chmod -R 505 /home/lvl5/help.txt &&\
    chmod -R 505 /home/lvl5/escape.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl5/.config/scripts/task.py' " >> /home/lvl5/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl5/.config/scripts/assets/'" >> /home/lvl5/.bashrc &&\
    echo "alias help='clear && cat /home/lvl5/help.txt'" >> /home/lvl5/.bashrc &&\
    echo "python3 /clean.py lvl5 && clear && cat /home/lvl5/.config/scripts/assets/intro.txt" >> /home/lvl5/.bashrc

#====================================================================

# level 2


COPY  ./lvl2/scripts /home/lvl2/.config/scripts

COPY  ./story.py /home/lvl2/.config/scripts/story.py

COPY  ./lvl2/help.txt /home/lvl2/

COPY ./lvl2/task.sh /home/lvl2/task.sh

COPY ./lvl2/required.txt /lvl2/required.txt

#====================================================================

# level 3


COPY  ./lvl3/scripts /home/lvl3/.config/scripts

COPY  ./story.py /home/lvl3/.config/scripts/story.py

COPY  ./lvl3/help.txt /home/lvl3/

COPY ./lvl3/file_gen.py /home/lvl3/file_gen.py

COPY ./lvl3/required.txt /lvl3/required.txt

#====================================================================

# level 4


COPY  ./lvl4/scripts /home/lvl4/.config/scripts

COPY  ./story.py /home/lvl4/.config/scripts/story.py

COPY  ./lvl4/help.txt /home/lvl4/

COPY ./lvl4/task.sh /home/lvl4/task.sh

COPY ./lvl4/required.txt /lvl4/required.txt


#====================================================================

# level 5


COPY  ./lvl5/scripts /home/lvl5/.config/scripts

COPY  ./story.py /home/lvl5/.config/scripts/story.py

COPY  ./lvl5/help.txt /home/lvl5/

COPY ./lvl5/task.sh /home/lvl5/task.sh

COPY ./lvl5/required.txt /lvl5/required.txt

#====================================================================

# level 6

COPY  ./lvl6/scripts /home/lvl6/.config/scripts

COPY  ./story.py /home/lvl6/.config/scripts/story.py

COPY  ./lvl6/help.txt /home/lvl6/

COPY ./lvl6/.lock.txt /home/lvl6/.lock.txt

COPY  ./lvl6/task.c /home/lvl6/task.c

COPY ./lvl6/required.txt /lvl6/required.txt

RUN service ssh start &&\
    chown lvl6 -R  /home/lvl6 &&\
    chmod -R 505 /home/lvl6/.config/scripts &&\
    chmod -R 505 /home/lvl6/help.txt &&\
    chmod -R 505 /home/lvl6/.lock.txt &&\
    echo "alias start='python3 /home/lvl6/.config/scripts/task.py' " >> /home/lvl6/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl6/.config/scripts/assets/'" >> /home/lvl6/.bashrc &&\
    echo "alias help='clear && cat /home/lvl6/help.txt'" >> /home/lvl6/.bashrc &&\
    echo "python3 /clean.py lvl6 && clear && cat /home/lvl6/.config/scripts/assets/intro.txt" >> /home/lvl6/.bashrc &&\
    gcc /home/lvl6/task.c -O3 -Wno-unused-result -o /home/lvl6/lever &&\
    chown lvl6 /home/lvl6/lever &&\
    echo "chmod 404 /home/lvl6/lever" >> /home/lvl6/.bashrc &&\
    rm /home/lvl6/task.c

#====================================================================

# level 7

RUN useradd -rm -d /home/lvl7 -s /bin/bash -g root lvl7 &&\
    echo "lvl7:p4rippu_v4da" | chpasswd

COPY  ./lvl7/scripts /home/lvl7/.config/scripts

COPY  ./story.py /home/lvl7/.config/scripts/story.py

COPY  ./lvl7/help.txt /home/lvl7/

COPY ./lvl7/fountain.sh /usr/local/bin/fountain.sh

COPY ./lvl7/vellam.md5  /usr/local/fountain/vellam.md5

COPY ./lvl7/vellam /home/lvl7/storage/vellam

COPY ./lvl7/.hidden_dungeon /home/lvl7/

COPY ./lvl7/required.txt /lvl7/required.txt

RUN service ssh start &&\
    chown lvl7 -R  /home/lvl7 &&\
    chmod -R 505 /home/lvl7/.config/scripts &&\
    chmod -R 505 /home/lvl7/help.txt &&\
    mkdir /home/lvl7/fountain &&\
    shc -f /usr/local/bin/fountain.sh -U -o /usr/local/bin/fountain &&\
    rm /usr/local/bin/fountain.* &&\
    chmod  705 /usr/local/bin/fountain &&\
    chmod  440 /usr/local/fountain/vellam.md5 &&\
    chmod 707 -R /home/lvl7/storage &&\
    chmod 707 -R /home/lvl7/fountain &&\
    echo "alias start='python3 /home/lvl7/.config/scripts/task.py' " >> /home/lvl7/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl7/.config/scripts/assets/'" >> /home/lvl7/.bashrc &&\
    echo "alias help='clear && cat /home/lvl7/help.txt'" >> /home/lvl7/.bashrc &&\
    echo "python3 /clean.py lvl7 && touch /home/lvl7/fountain/vellam && rm /home/lvl7/fountain/vellam && clear && cat /home/lvl7/.config/scripts/assets/intro.txt" >> /home/lvl7/.bashrc 

#====================================================================

# level 8

RUN useradd -rm -d /home/lvl8 -s /bin/bash -g root lvl8 &&\
    echo "lvl8:p4rzm_p0r1" | chpasswd

COPY  ./lvl8/scripts /home/lvl8/.config/scripts

COPY  ./story.py /home/lvl8/.config/scripts/story.py

COPY  ./lvl8/help.txt /home/lvl8/

COPY ./lvl8/required.txt /lvl8/required.txt

RUN useradd -rm -d /home/gopan -s /bin/bash -g root gopan &&\
    echo "gopan:agentX" | chpasswd &&\
    echo -e "============\null1_v4da\n============\n" > /home/gopan/rahasyam &&\
    echo -e "thaka thaka..thalayude_vilayattu..\n [agentX]\n" > /home/lvl8/.thaka_thaka.txt &&\
    chown lvl8 -R  /home/lvl8 &&\
    chmod -R 505 /home/lvl8/.config/scripts &&\
    chmod -R 505 /home/lvl8/help.txt &&\
    chmod -R 505 /home/gopan/rahasyam &&\
    chmod -R 505 /home/lvl8/.thaka_thaka.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl8/.config/scripts/task.py' " >> /home/lvl8/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl8/.config/scripts/assets/'" >> /home/lvl8/.bashrc &&\
    echo "alias help='clear && cat /home/lvl8/help.txt'" >> /home/lvl8/.bashrc &&\
    echo "python3 /clean.py lvl8 && clear && cat /home/lvl8/.config/scripts/assets/intro.txt" >> /home/lvl8/.bashrc 

#====================================================================

# level 9

RUN useradd -rm -d /home/lvl9 -s /bin/bash -g root lvl9 &&\
    echo "lvl9:ull1_v4da" | chpasswd

COPY  ./lvl9/scripts /home/lvl9/.config/scripts

COPY  ./story.py /home/lvl9/.config/scripts/story.py

COPY  ./lvl9/help.txt /home/lvl9/

COPY ./lvl9/task.c /home/lvl9/task.c

COPY ./lvl9/required.txt /lvl9/required.txt

RUN gcc /home/lvl9/task.c -O3 -Wno-unused-result -o /usr/local/bin/mull_chedi &&\
    rm /home/lvl9/task.c &&\
    chown lvl9 -R  /home/lvl9 &&\
    chmod  705 /usr/local/bin/mull_chedi &&\
    mkdir /home/lvl9/treasure &&\
    echo -e "================\nk4ttan_Ch4ya\n================\n" > /home/lvl9/treasure/secret &&\
    cd /home/lvl9/ && zip -r --password thur4nNu_v4a treasure.zip treasure &&\
    rm -rf /home/lvl9/treasure &&\
    chmod -R 505 /home/lvl9/.config/scripts &&\
    chmod -R 505 /home/lvl9/help.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl9/.config/scripts/task.py' " >> /home/lvl9/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl9/.config/scripts/assets/'" >> /home/lvl9/.bashrc &&\
    echo "alias help='clear && cat /home/lvl9/help.txt'" >> /home/lvl9/.bashrc &&\
    echo "mull_chedi &">>/home/lvl9/.bashrc &&\
    echo "python3 /clean.py lvl9 && touch treasure && rm -rf /home/lvl9/treasure && clear && cat /home/lvl9/.config/scripts/assets/intro.txt" >> /home/lvl9/.bashrc 

#====================================================================

# level 10

RUN useradd -rm -d /home/lvl10 -s /bin/bash -g root lvl10 &&\
    echo "lvl10:k4ttan_Ch4ya" | chpasswd 

COPY  ./lvl10/scripts /home/lvl10/.config/scripts

COPY  ./story.py /home/lvl10/.config/scripts/story.py

COPY  ./lvl10/help.txt /home/lvl10/

COPY ./lvl10/vanaram_ftp.txt /home/lvl10/vanaram_ftp.txt

COPY ./lvl10/vsftpd.conf /etc/vsftpd.conf

COPY ./lvl10/vsftpd.u_list /etc/vsftpd.u_list

COPY ./lvl10/start.sh     /start.sh

COPY ./lvl10/required.txt /lvl10/required.txt

RUN useradd -rm -d /home/vanaram -s /bin/bash -g root vanaram &&\
    echo "vanaram:par4nju_ther1la" | chpasswd &&\
    chmod +x start.sh &&\
    mkdir /ftp &&\
    echo "AppY_f1zZ" > /ftp/rahasyam &&\
    chown lvl10 -R  /home/lvl10 &&\
    chmod -R 505 /home/lvl10/.config/scripts &&\
    chmod -R 505 /home/lvl10/help.txt &&\
    chmod -R 505 /home/lvl10/vanaram_ftp.txt &&\
    service ssh start &&\
    service vsftpd start &&\
    echo "alias start='python3 /home/lvl10/.config/scripts/task.py' " >> /home/lvl10/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl10/.config/scripts/assets/'" >> /home/lvl10/.bashrc &&\
    echo "alias help='clear && cat /home/lvl10/help.txt'" >> /home/lvl10/.bashrc &&\
    echo "python3 /clean.py lvl10 && touch /home/lvl10/rahasyam && rm /home/lvl10/rahasyam && clear && cat /home/lvl10/.config/scripts/assets/intro.txt" >> /home/lvl10/.bashrc 

#====================================================================

# level 11

RUN useradd -rm -d /home/lvl11 -s /bin/bash -g root lvl11 &&\
    echo "lvl11:AppY_f1zZ" | chpasswd

COPY  ./lvl11/scripts /home/lvl11/.config/scripts

COPY  ./story.py /home/lvl11/.config/scripts/story.py

COPY  ./lvl11/help.txt /home/lvl11/

COPY ./lvl11/buns /home/lvl11/buns

COPY ./lvl11/rocky.sh /usr/local/bin/rocky.sh

COPY ./lvl11/bun.md5  /usr/local/rocky/bun.md5

COPY ./lvl11/instruction.txt /home/lvl11/instruction.txt

COPY ./lvl11/required.txt /lvl11/required.txt

RUN chown lvl11 -R  /home/lvl11 &&\
    chmod -R 505 /home/lvl11/.config/scripts &&\
    chmod -R 505 /home/lvl11/help.txt &&\
    chmod -R 505 /home/lvl11/instruction.txt &&\
    mkdir /home/lvl11/dining_table &&\
    chmod  705 /usr/local/bin/rocky.sh &&\
    chmod  404 /usr/local/rocky/bun.md5 &&\
    chmod 707 -R /home/lvl11/dining_table &&\
    chmod 707 -R /home/lvl11/buns &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl11/.config/scripts/task.py' " >> /home/lvl11/.bashrc &&\
    echo "export tries=4 && export ASSET_DIR='/home/lvl11/.config/scripts/assets/'" >> /home/lvl11/.bashrc &&\
    echo "alias help='clear && cat /home/lvl11/help.txt'" >> /home/lvl11/.bashrc &&\
    echo 'alias rocky="source rocky.sh"' >> /home/lvl11/.bashrc &&\
    echo "python3 /clean.py lvl11 && rm -rf /home/lvl11/dining_table/* && clear && cat /home/lvl11/.config/scripts/assets/intro.txt" >> /home/lvl11/.bashrc 

#====================================================================

# level 12

RUN useradd -rm -d /home/lvl12 -s /bin/bash -g root lvl12 &&\
    echo "lvl12:m0j1to" | chpasswd

COPY  ./lvl12/scripts /home/lvl12/.config/scripts

COPY  ./story.py /home/lvl12/.config/scripts/story.py

COPY  ./lvl12/help.txt /home/lvl12/

COPY ./lvl12/task.sh /home/lvl12/task.sh

COPY ./lvl12/required.txt /lvl12/required.txt

RUN chmod +x /home/lvl12/task.sh &&\
    /home/lvl12/task.sh &&\
    rm /home/lvl12/task.sh &&\
    chown lvl12 -R  /home/lvl12 &&\
    chmod -R 505 /home/lvl12/.config/scripts &&\
    chmod -R 505 /home/lvl12/help.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl12/.config/scripts/task.py' " >> /home/lvl12/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl12/.config/scripts/assets/'" >> /home/lvl12/.bashrc &&\
    echo "alias help='clear && cat /home/lvl12/help.txt'" >> /home/lvl12/.bashrc &&\
    echo "python3 /clean.py lvl12 && clear && cat /home/lvl12/.config/scripts/assets/intro.txt" >> /home/lvl12/.bashrc 

#====================================================================

# level 13

RUN useradd -rm -d /home/lvl13 -s /bin/bash -g root lvl13 &&\
    echo "lvl13:s4mbhaR4m" | chpasswd

COPY  ./lvl13/scripts /home/lvl13/.config/scripts

COPY  ./story.py /home/lvl13/.config/scripts/story.py

COPY  ./lvl13/help.txt /home/lvl13/

COPY ./lvl13/instruction.txt /home/lvl13/instruction.txt

COPY ./lvl13/required.txt /lvl13/required.txt

RUN chown lvl13 -R  /home/lvl13 &&\
    chmod -R 505 /home/lvl13/.config/scripts &&\
    chmod -R 505 /home/lvl13/help.txt &&\
    chmod -R 505 /home/lvl13/instruction.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl13/.config/scripts/task.py' " >> /home/lvl13/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl13/.config/scripts/assets/'" >> /home/lvl13/.bashrc &&\
    echo "alias help='clear && cat /home/lvl13/help.txt'" >> /home/lvl13/.bashrc &&\
    echo "python3 /clean.py lvl13 && clear && cat /home/lvl13/.config/scripts/assets/intro.txt" >> /home/lvl13/.bashrc 

#====================================================================

# level 14

RUN useradd -rm -d /home/lvl14 -s /bin/bash -g root lvl14 &&\
    echo "lvl14:p4l_pay4saM" | chpasswd

COPY  ./lvl14/scripts /home/lvl14/.config/scripts

COPY  ./story.py /home/lvl14/.config/scripts/story.py

COPY  ./lvl14/help.txt /home/lvl14/

COPY ./lvl14/instruction.txt /home/lvl14/instruction.txt

COPY ./lvl14/required.txt /lvl14/required.txt

RUN chown lvl14 -R  /home/lvl14 &&\
    chmod -R 505 /home/lvl14/.config/scripts &&\
    chmod -R 505 /home/lvl14/help.txt &&\
    chmod -R 505 /home/lvl14/instruction.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl14/.config/scripts/task.py' " >> /home/lvl14/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl14/.config/scripts/assets/'" >> /home/lvl14/.bashrc &&\
    echo "alias help='clear && cat /home/lvl14/help.txt'" >> /home/lvl14/.bashrc &&\
    echo "python3 /clean.py lvl14 && clear && cat /home/lvl14/.config/scripts/assets/intro.txt" >> /home/lvl14/.bashrc 


#====================================================================

# level 15

RUN useradd -rm -d /home/lvl15 -s /bin/bash -g root lvl15 &&\
    echo "lvl15:Theng4_shaW4rma" | chpasswd

COPY  ./lvl15/scripts /home/lvl15/.config/scripts

COPY  ./story.py /home/lvl15/.config/scripts/story.py

COPY  ./lvl15/help.txt /home/lvl15/

COPY  ./lvl15/instruction.txt /home/lvl15/

COPY ./lvl15/required.txt /lvl15/required.txt

RUN chown lvl15 -R  /home/lvl15 &&\
    chmod -R 505 /home/lvl15/.config/scripts &&\
    chmod -R 505 /home/lvl15/help.txt &&\
    chmod -R 505 /home/lvl15/instruction.txt &&\
    service ssh start &&\
    echo "alias start='python3 /home/lvl15/.config/scripts/task.py' " >> /home/lvl15/.bashrc &&\
    echo "export ASSET_DIR='/home/lvl15/.config/scripts/assets/'" >> /home/lvl15/.bashrc &&\
    echo "alias help='clear && cat /home/lvl15/help.txt'" >> /home/lvl15/.bashrc &&\
    echo "python3 /clean.py lvl15 && clear && cat /home/lvl15/.config/scripts/assets/intro.txt" >> /home/lvl15/.bashrc 

#====================================================================

#Start ssh daemon

EXPOSE 22

CMD ["/start.sh"]

#====================================================================
