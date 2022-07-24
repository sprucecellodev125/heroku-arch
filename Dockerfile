FROM archlinux

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate --noconfirm

RUN chmod -R 777 /opt/bin/ /etc/passwd \
    && chgrp -R 0 /opt/bin/ \
    && chmod -R g=u /opt/bin/

CMD ["tmate -F"]
