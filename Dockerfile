FROM node:16-alpine
LABEL MAINTAINER="Baksi Li <myself@baksili.codes>"

RUN apk add --update --no-cache git \
    && git clone --depth=1 https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && npm install --no-optional

WORKDIR /scratch-gui
CMD ["npm","start"]
