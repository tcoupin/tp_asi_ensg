FROM ubuntu:yakkety
MAINTAINER Thibault Coupin <thibault.coupin@ign.fr>

# pour le apt-get plus tart
ENV http_proxy http://10.0.4.2:3128

ARG GEOSERVER_VERSION=2.10.1
EXPOSE 8080
VOLUME /geoserver/geoserver-${GEOSERVER_VERSION}/data_dir

RUN apt-get update \
	&& apt-get install -y unzip openjdk-8-jre-headless

# n'utilise pas la variable d'environnement mais la configuration de la machine hôte
ADD https://netix.dl.sourceforge.net/project/geoserver/GeoServer/${GEOSERVER_VERSION}/geoserver-${GEOSERVER_VERSION}-bin.zip /tmp/ 

# le /geoserver a été créé implicitement par la commande VOLUME
RUN cd /geoserver \
	&& unzip /tmp/geoserver-${GEOSERVER_VERSION}-bin.zip \
	&& rm /tmp/geoserver-${GEOSERVER_VERSION}-bin.zip

CMD /geoserver/geoserver-${GEOSERVER_VERSION}/bin/startup.sh