FROM tutum/apache-php
EXPOSE 80
RUN apt-get update -y
RUN apt-get install git-core -y
RUN apt-get install curl -y

ADD ./scripts/install_wpcli.sh /scripts/install_wpcli.sh
RUN /scripts/install_wpcli.sh

ADD ./scripts/install_wordpress.sh /scripts/install_wordpress.sh
RUN /scripts/install_wordpress.sh
