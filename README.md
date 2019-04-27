# kuetemeier/image-opt

Docker container to run GraphicsMagick, OptiPNG und MozJPG for website image optimization.

Built on [Alpine Linux](https://alpinelinux.org/).

## Example

    $ docker run kuetemeier/image-opt gm -version

    GraphicsMagick 1.3.31 2018-11-17 Q16 http://www.GraphicsMagick.org/
    Copyright (C) 2002-2018 GraphicsMagick Group.
    Additional copyrights and licenses apply to this software.
    See http://www.GraphicsMagick.org/www/Copyright.html for details.
    
    Feature Support:
      Native Thread Safe       yes
      Large Files (> 32 bit)   yes
      Large Memory (> 32 bit)  yes
      BZIP                     no
      DPS                      no
      FlashPix                 no
      FreeType                 no
      Ghostscript (Library)    no
      JBIG                     no
      JPEG-2000                no
      JPEG                     yes
      Little CMS               no
      Loadable Modules         yes
      OpenMP                   yes (201511)
      PNG                      yes
      TIFF                     no
      TRIO                     no
      UMEM                     no
      WebP                     no
      WMF                      no
      X11                      no
      XML                      no
      ZLIB                     yes
    
    Host type: x86_64-pc-linux-musl
    
    Configured using the command:
      ./configure  '--build=' '--host=' '--prefix=/usr' '--sysconfdir=/etc' '--mandir=/usr/share/man' '--infodir=/usr/share/info'     '--localstatedir=/var' '--enable-shared' '--disable-static' '--with-modules' '--with-threads' '--with-gs-font-dir=/usr/share/    fonts/Type1' '--with-quantum-depth=16' 'build_alias=' 'host_alias='
    
    Final Build Parameters:
      CC       = gcc
      CFLAGS   = -fopenmp -g -O2 -Wall
      CPPFLAGS =
      CXX      = g++
      CXXFLAGS =
      LDFLAGS  =
      LIBS     = -lz -lltdl -lm -lpthread
    

Caveats
-------

As Alpine Linux uses musl, you may run into some issues with environments
expecting glibc-like behaviour (for example, Kubernetes). Some of these issues
are documented here:

- http://gliderlabs.viewdocs.io/docker-alpine/caveats/
- https://github.com/gliderlabs/docker-alpine/issues/8

## Thanks to

Thank you for your work and inspiring this project!

- https://github.com/rafakato/alpine-graphicsmagick
- https://github.com/froulet/docker-optipng-alpine
