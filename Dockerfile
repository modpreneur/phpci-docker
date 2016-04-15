FROM modpreneur/necktie-dev:0.4.1

MAINTAINER Tomáš Jančar <jancar@modpreneur.com>


RUN docker-php-ext-install pdo pdo_mysql


# Install app
ADD . /var/app


RUN echo "alias composer=\"php -n -d extension=mbstring.so -d extension=zip.so -d extension=bcmath.so -d extension=pdo_mysql.so /usr/bin/composer\"" >> /etc/bash.bashrc

RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh", "service postfix start"]


