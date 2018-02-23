FROM revgen/docker-base

RUN apt-get update && apt-get install -y curl build-essential

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - 

RUN apt-get install -y nodejs

RUN npm install pm2 -g

CMD supervisord -n -c /etc/supervisor/supervisord.conf

