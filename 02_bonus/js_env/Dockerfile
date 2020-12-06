FROM	debian

MAINTAINER ilkou <oouklich@student.1337.ma>

RUN	apt-get update && \
	apt-get upgrade -y

RUN	apt-get install git vim -y

RUN	apt-get install nodejs npm -y

RUN	apt-get install curl -y && \
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

CMD	bash
