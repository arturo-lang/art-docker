#############################
# Arturo
# Docker configuration
#############################

FROM fingidor/arturo-nim-docker:0.1

#############################
# Install Packages
#############################

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git build-essential libgtk-3-dev libwebkit2gtk-4.0-dev

#############################
# Clone & Build
#############################

RUN git clone https://github.com/arturo-lang/arturo.git 
RUN /bin/bash -c "cd arturo && ./build.sh install"

#############################
# Set current dir
#############################

WORKDIR /root

#############################
# Set Entry point
#############################

CMD ["arturo"]