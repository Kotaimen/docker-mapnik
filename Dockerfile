FROM        ubuntu:xenial
MAINTAINER  Kotaimen <kotaimen.c@gmail.com>

ENV         DEBIAN_FRONTEND noninteractive

#
# Install packages
#
RUN         set -x \
            &&  apt-get -q update \
            &&  apt-get -yq --no-install-recommends install \
                    locales \
                    ca-certificates curl \
                    build-essential gcc \
                    imagemagick \
                    libmapnik3.0 \
                    mapnik-utils \
                    \
                    python \
                    cython \
                    python-pip \
                    python-wheel \
                    python-setuptools \
                    python-dev \
                    python-pil \
                    python-numpy \
                    python-scipy \
                    python-pylibmc \
                    python-skimage \
                    python-gdal \
                    python-mapnik \
                    \
                    python3 \
                    cython3 \
                    python3-pip \
                    python3-wheel \
                    python3-setuptools \
                    python3-dev \
                    python3-pil \
                    python3-numpy \
                    python3-scipy \
                    python3-pylibmc \
                    python3-skimage \
                    python3-gdal \
                    python3-mapnik
#
# Patch gdal data files, see:
#   https://launchpad.net/ubuntu/trusty/+source/gdal/+copyright
RUN         curl -SL http://cdn.knrdesign.co/dist/gdal-1.11.3/data/esri_extra.wkt > /usr/share/gdal/1.11/esri_extra.wkt
