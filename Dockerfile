FROM centos-jdk:v1.8.0_151
RUN mkdir /data/shoppingCenter/ -p
COPY shoppingCenter/ /data/shoppingCenter/
EXPOSE 9999
WORKDIR /data/shoppingCenter/bin
ENTRYPOINT ["./start.sh"]

