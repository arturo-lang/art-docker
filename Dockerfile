FROM frolvlad/alpine-nim

RUN apk update
RUN apk add bash git gmp-dev mpfr-dev pcre-dev sqlite-dev 

RUN git clone https://github.com/arturo-lang/arturo.git
RUN cd arturo && ./build.nims install release mini log

ENV PATH="/root/.arturo/bin:${PATH}"

WORKDIR /home

ENTRYPOINT [ "/root/.arturo/bin/arturo" ]