FROM archlinux

USER root

ENV HOME=/root \
    DYNO=ssh \

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate neofetch base-devel htop sudo git fakeroot wget curl --noconfirm --needed

RUN chmod -R 777 /etc/passwd 

RUN curl -o /start.sh https://raw.githubusercontent.com/ItzCuteAkemi/heroku-arch/main/Dockerfile 

CMD ["bash", "/start.sh"]
