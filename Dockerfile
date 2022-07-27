FROM archlinux

USER root

ENV HOME=/root

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate neofetch base-devel htop xfce4 xfce4-goodies novnc x11vnc htop --noconfirm --needed

RUN chmod -R 777 /etc/passwd 

CMD ["tmate", "-F"]
