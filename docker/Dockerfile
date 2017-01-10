FROM alpine

MAINTAINER lyc <imyikong@gmail.com>

ADD build.sh /build.sh
ADD entry.sh /entry.sh

ENV REDIS_HOST ""
ENV REDIS_POST ""
ENV DOCKER_DEBUG 0

EXPOSE 4000

WORKDIR /
RUN ["/build.sh"]

ENTRYPOINT ["/entry.sh"]
