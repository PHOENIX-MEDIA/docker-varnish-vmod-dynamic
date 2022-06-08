FROM varnish:6.6-alpine
LABEL maintainer="bjoern.kraus@phoenix-media.eu"

ENV VARNISH_VERSION 6.6

RUN BASE_PKGS="py3-docutils python3 autoconf make automake libtool git"; \
    apk add --virtual varnish-build-deps -q --no-progress --update $BASE_PKGS \
    # Installing vmods
    && cd /tmp && git clone https://github.com/nigoroll/libvmod-dynamic && cd libvmod-dynamic \
    &&  git checkout ${VARNISH_VERSION} \
    && ./autogen.sh && ./configure && make install clean \
    # cleanup
    && apk del --no-network varnish-build-deps;
