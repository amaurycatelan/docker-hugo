FROM alpine:3.4

ENV HUGO_VERSION 0.17.1
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit
ENV HUGO_TARBALL ${HUGO_BINARY}.tar.gz

ADD https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} /

RUN tar -zxvf ${HUGO_TARBALL} && \
ln -s /${HUGO_BINARY}/hugo /bin/hugo && \
rm ${HUGO_TARBALL}

VOLUME /src
WORKDIR /src

EXPOSE 1313
ENTRYPOINT ["hugo"]