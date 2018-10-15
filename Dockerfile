FROM revgen/docker-base

RUN apt-get update && apt-get install -y curl build-essential

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - 

RUN apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN npm install pm2 -g && pm2 install pm2-logrotate

CMD supervisord -n -c /etc/supervisor/supervisord.conf

