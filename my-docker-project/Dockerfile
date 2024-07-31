
FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8


RUN apt-get update && \
    apt-get install -y bash curl wget vim nano locales \
    screen xterm && \
    locale-gen en_US.UTF-8


COPY watch.sh /usr/local/bin/watch.sh


RUN chmod +x /usr/local/bin/watch.sh


RUN useradd -ms /bin/bash myuser
USER myuser


ENTRYPOINT ["/usr/local/bin/watch.sh"]

