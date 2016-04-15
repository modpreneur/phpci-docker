FROM modpreneur/necktie:0.4.1

MAINTAINER Tomáš Jančar <jancar@modpreneur.com>


RUN docker-php-ext-install pdo_mysql

# Install app
ADD . /var/app



RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh", "service postfix start"]


