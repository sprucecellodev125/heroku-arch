FROM archlinux

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate neofetch base-devel htop i3 xorg-server-xvfb x11vnc --noconfirm --needed

RUN chmod -R 777 /etc/passwd 

CMD ["tmate", "-F"]
