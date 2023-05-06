FROM node:18.15.0

RUN apt-get update

RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_extended_0.111.3_linux-amd64.deb -o hugo.deb

RUN apt install ./hugo.deb

WORKDIR /usr/src/app

CMD ["npm", "run", "dev"]
