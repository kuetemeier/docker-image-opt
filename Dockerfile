FROM alpine:latest
MAINTAINER Jörg Kütemeier "joerg@kuetemeier.de"

ENV PKGNAME=graphicsmagick
ENV PKGVER=1.3.31
ENV PKGSOURCE=http://downloads.sourceforge.net/$PKGNAME/$PKGNAME/$PKGVER/GraphicsMagick-$PKGVER.tar.lz

#
# Installing graphicsmagick dependencies
RUN apk add --no-cache --update g++ \
                     gcc \
                     make \
                     lzip \
                     wget \
                     libjpeg-turbo-dev \
                     libpng-dev \
                     libtool \
                     optipng \
                     libgomp && \
    wget $PKGSOURCE && \
    lzip -d -c GraphicsMagick-$PKGVER.tar.lz | tar -xvf - && \
    cd GraphicsMagick-$PKGVER && \
    ./configure \
      --build=$CBUILD \
      --host=$CHOST \
      --prefix=/usr \
      --sysconfdir=/etc \
      --mandir=/usr/share/man \
      --infodir=/usr/share/info \
      --localstatedir=/var \
      --enable-shared \
      --disable-static \
      --with-modules \
      --with-threads \
      --with-gs-font-dir=/usr/share/fonts/Type1 \
      --with-quantum-depth=16 && \
    make && \
    make install && \
    cd / && \
    rm -rf GraphicsMagick-$PKGVER && \
    rm GraphicsMagick-$PKGVER.tar.lz && \
    apk del g++ \
            gcc \
            make \
            lzip \
            wget
