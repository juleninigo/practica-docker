FROM ubuntu:20.04
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata && apt install software-properties-common -y && add-apt-repository ppa:ondrej/php -y && apt install php8.0 libapache2-mod-php8.0 -y && apt install php8.0-mysql php8.0-gd -y
EXPOSE 80
CMD apachectl -D FOREGROUND