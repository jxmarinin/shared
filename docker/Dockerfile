
FROM node:20-alpine
ARG UID=1001
ARG GID=1001

RUN apk add --no-cache shadow

RUN groupmod -g "${GID}" node && usermod -u "${UID}" -g "${GID}" node
RUN npm install -g npm@10.5.0

RUN echo "fs.inotify.max_user_watches=524288" | tee -a /etc/sysctl.conf


RUN id
RUN npm install -g @angular/cli@17


USER node
# RUN id -u


# RUN ls -al "/.npm"
WORKDIR /app
# RUN ls -al  /
EXPOSE 4200 49153
CMD npm start
