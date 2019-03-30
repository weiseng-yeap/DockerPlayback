
FROM clearlinux:latest

#Enviroment setup below
ENV CLEAR_LINUX_VERSION=28380
ENV WORKDIR=/workdir
ENV APPDIR=$WORKDIR/app

#Create the workdir
RUN mkdir -p $WORKDIR
RUN mkdir -p $APPDIR

COPY container_start.sh $WORKDIR
COPY app $APPDIR
COPY README.md /

#Update the packagas need for the docker
RUN swupd autoupdate --disable || true
RUN swupd verify -b --fix --picky --force -m $CLEAR_LINUX_VERSION
RUN swupd bundle-add --skip-diskspace-check package-utils
RUN swupd bundle-add gstreamer
RUN swupd bundle-add software-defined-cockpit


#Run the container
CMD /$WORKDIR/container_start.sh


