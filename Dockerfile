FROM l3iggs/archlinux:latest
RUN pacman -Syu
RUN pacman -Syu
RUN echo Y | pacman -Syu --needed --confirm unzip fish nano  
RUN echo Y | pacman -Syu --needed less elinks openssh  st mc python python3
RUN echo Y | pacman -Syu --needed zip unrar awk perl zsh wget
RUN mkdir -p /home/arch && cd /home/arch && wget https://aur.archlinux.org/cgit/aur.git/snapshot/byobu.tar.gz && sleep 1 
RUN cd /home/arch && tar xzf byobu.tar.gz > byobu && cd byobu && su - nate && echo Y | makepkg -sri