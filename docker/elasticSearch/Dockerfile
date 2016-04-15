FROM elasticsearch:latest
    #as for 11.3.2016 versions are broken for docker compose
MAINTAINER Gabriel Bordovsky <bordovsky@modpreneur.com>



ADD elasticSearchInit.sh elasticSearchInit.sh
ADD test.sh test.sh
RUN chmod +x elasticSearchInit.sh
RUN chmod +x test.sh

ENTRYPOINT ["sh", "./elasticSearchInit.sh" ]
CMD ["elasticsearch","./test.sh"]
