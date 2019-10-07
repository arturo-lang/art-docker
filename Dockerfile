#############################
# Arturo
# Docker configuration
#############################

FROM ubuntu:16.04

#############################
# Install Packages
#############################

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git libcurl3 libcurl4-openssl-dev libgio2.0-cil-dev libgdk3.0-cil-dev build-essential flex bison
RUN curl -fsS https://dlang.org/install.sh | bash -s dmd 
RUN apt-get install libgio2.0-cil-dev libgdk3.0-cil-dev

RUN git clone https://github.com/arturo-lang/arturo.git 
RUN /bin/bash -c "source /root/dlang/dmd-2.088.0/activate && cd arturo && dub build --build=release"

#############################
# Set Entry point
#############################

CMD ["./arturo/arturo", "-c"]