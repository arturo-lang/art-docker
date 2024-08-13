FROM nimlang/nim 

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y build-essential git libgtk-3-dev libwebkit2gtk-4.0-dev libmpfr-dev

RUN git clone https://github.com/arturo-lang/arturo.git
RUN cd arturo && ./build.nims build --install --log

ENV PATH="/root/.arturo/bin:${PATH}"

WORKDIR /home

ENTRYPOINT [ "/root/.arturo/bin/arturo" ]