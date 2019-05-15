FROM golang:alpine

RUN apk add --no-cache git

RUN mkdir $HOME/src \
      && cd $HOME/src \
      && git clone https://github.com/gohugoio/hugo.git \
      && cd hugo \
      && go install

RUN hugo new site /lodoc

WORKDIR /lodoc

RUN git clone https://github.com/NickolasHKraus/alabaster-2.git themes/alabaster-2

COPY config.toml .

EXPOSE 1313

ENTRYPOINT hugo serve --bind 0.0.0.0
