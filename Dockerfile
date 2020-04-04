FROM manjarolinux/base

RUN pacman -Syu --noconfirm && pacman -S --noconfirm sudo vi
RUN useradd -m iaderdor && usermod -aG wheel iaderdor && usermod --password $(echo verysafepassword | openssl passwd -1 -stdin) iaderdor
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

COPY ./install.sh /home/iaderdor

RUN chmod +x /home/iaderdor/install.sh && chown iaderdor: /home/iaderdor/install.sh

USER iaderdor
WORKDIR /home/iaderdor
