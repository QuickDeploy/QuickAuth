FROM newnius/php:7.3

MAINTAINER Newnius <docker@newnius.com>

RUN curl -L https://github.com/newnius/QuickAuth/archive/2.0.1.tar.gz > /tmp/quickauth.tar.gz \
	&& tar -C /tmp -xzvf /tmp/quickauth.tar.gz \
	&& mv /tmp/QuickAuth-2.0.1/.htaccess /var/www/html \
	&& mv /tmp/QuickAuth-2.0.1/* /var/www/html \
	&& rm -rf /tmp/*

ADD config/config.js /var/www/html/static/

ADD config/config.inc.php /var/www/html/

ADD bootstrap.sh /etc/

CMD /etc/bootstrap.sh