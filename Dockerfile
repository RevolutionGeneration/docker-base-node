FROM revgen/docker-base

RUN apt-get update && apt-get install -y npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install pm2 -g

CMD supervisord -n -c /etc/supervisor/supervisord.conf

