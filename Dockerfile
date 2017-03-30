FROM frolvlad/alpine-oraclejdk8:slim
ENV NIFI_VERSION 1.1.2
ENV NIFI_PKG nifi-$NIFI_VERSION
ENV NIFI_ARCH $NIFI_PKG-bin.tar.gz
RUN apk --no-cache add wget unzip \
  && wget http://apache.cp.if.ua/nifi/$NIFI_VERSION/$NIFI_ARCH \
  && tar -xvf $NIFI_ARCH \
  && mv -f $NIFI_PKG nifi \
  && mkdir -p /opt \
  && mv -f nifi /opt/ \
  && rm -rf $NIFI_ARCH \
  && /opt/nifi/bin/nifi.sh start
CMD ["tail", "-f", "/opt/nifi/run/nifi.status"]
ENTRYPOINT /opt/nifi/bin/nifi.sh start && tail -f /opt/nifi/run/nifi.status
