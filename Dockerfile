FROM python:3.6.1-alpine3.6

RUN set -x \
 && apk --update upgrade \
 && apk --no-cache add g++ freetype-dev libpng-dev \
 && ln -s /usr/include/locale.h /usr/include/xlocale.h \
 && pip --no-cache-dir install matplotlib==2.0.2 \
 && rm -fr /root/.cache/
