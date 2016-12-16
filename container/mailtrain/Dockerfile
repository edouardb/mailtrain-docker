FROM node:6

RUN apt-get update && apt-get install -y \
    git

RUN adduser --disabled-password --shell /bin/bash --gecos 'mailtrain user' mailtrain \
  && install -d -m 755 -o mailtrain -g mailtrain /git/mailtrain

WORKDIR /git/mailtrain
USER mailtrain

RUN git clone git://github.com/andris9/mailtrain.git /git/mailtrain

RUN npm install --no-progress --production

ENV NODE_ENV production

EXPOSE 3000 5699

CMD node index.js

