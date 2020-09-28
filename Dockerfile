#############################
# Arturo
# Docker configuration
#############################

FROM yglukhov/nim-base

#############################
# Install Packages
#############################

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git libcurl4 libgmp3-dev build-essential ruby flex bison

#############################
# Clone & Build
#############################

RUN git clone https://github.com/arturo-lang/arturo.git 
RUN /bin/bash -c "cd arturo && ./build.sh"

#############################
# Set Entry point
#############################

CMD ["./arturo/bin/arturo"]