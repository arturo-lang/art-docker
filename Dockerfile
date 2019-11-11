#############################
# Arturo
# Docker configuration
#############################

FROM nimlang/nim

#############################
# Install Packages
#############################

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git libcurl4 libgmp3-dev build-essential ruby flex bison

RUN yes | nimble install bignum

#############################
# Clone & Build
#############################

RUN git clone https://github.com/arturo-lang/arturo.git 
RUN /bin/bash -c "cd arturo && nimble release"

#############################
# Set Entry point
#############################

CMD ["./arturo/arturo"]