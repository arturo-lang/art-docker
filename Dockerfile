FROM nimlang/nim:2.0.4-alpine-slim

RUN apk add --no-cache bash git gmp-dev gtk+3.0-dev mpfr-dev pcre-dev sqlite-dev webkit2gtk-dev

RUN git clone https://github.com/arturo-lang/arturo.git
RUN cd arturo && ./build.nims --install --release --mini --log

ENV PATH="/root/.arturo/bin:${PATH}"

WORKDIR /arturo

ENTRYPOINT [ "/root/.arturo/bin/arturo" ]
