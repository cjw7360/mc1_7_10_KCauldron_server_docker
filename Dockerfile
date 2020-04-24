FROM openjdk:8

WORKDIR /mc_server
COPY mc_server_files/ /mc_server/
COPY start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]