FROM python:3.6.5-alpine3.7

RUN set -x \
 && apk --update upgrade \
 && apk --no-cache add freetype-dev libpng-dev \
 && apk --no-cache add alpine-sdk \
 && ln -s /usr/include/locale.h /usr/include/xlocale.h \
 && pip --no-cache-dir install matplotlib==2.2.2 \
 && apk del --purge alpine-sdk \
 && apk --no-cache add libstdc++ \
 && rm -fr /root/.cache/
