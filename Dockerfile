FROM frolvlad/alpine-nim

RUN apk update
RUN apk add git gmp-dev sqlite-dev pcre-dev

RUN git clone https://github.com/arturo-lang/arturo.git
RUN cd arturo && ./install mini log

ENV PATH="/root/.arturo/bin:${PATH}"

WORKDIR /home

ENTRYPOINT [ "/root/.arturo/bin/arturo" ]