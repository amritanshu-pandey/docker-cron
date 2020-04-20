FROM amritanshu16/docker-base:latest
LABEL maintainer='Amritanshu Pandey <email@amritanshu.in>'

RUN apt update -y \
     && apt dist-upgrade -y \
     && apt install cron -y \
     && apt autoremove -y

ADD root /

RUN mkdir /cron-scripts
VOLUME /etc/initialise.sh.d/
VOLUME /cron-scripts

CMD /initialise.sh
