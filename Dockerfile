FROM ubuntu:14.04

#ENV SICKBEARD_VERSION torrent_1080_subtitles
#ENV SICKBEARD_VERSION build-506

RUN apt-get -q update &&\
    apt-get -qy --force-yes dist-upgrade

RUN apt-get install -qy --force-yes python-cheetah python-setuptools wget tar ca-certificates curl git

RUN git clone https://gitlab.com/sarakha63/Sick-Beard.git /sickbeard

# apt clean
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

VOLUME /config
VOLUME /data

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081

CMD ["/start.sh"]
