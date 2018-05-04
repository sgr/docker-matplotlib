FROM python:3.6.5-alpine3.7

RUN set -x \
 && apk --no-cache add g++ freetype-dev libpng-dev \
 && ln -s /usr/include/locale.h /usr/include/xlocale.h \
 && pip --no-cache-dir install matplotlib==2.2.2 \
 && rm -fr /root/.cache/
