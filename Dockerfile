FROM archlinux

USER root

ENV HOME=/root \
    PORT=8080

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate neofetch base-devel htop xfce4 xfce4-goodies x11vnc htop sudo git fakeroot --noconfirm --needed

RUN chmod -R 777 /etc/passwd 

CMD ["tmate", "-F"]
