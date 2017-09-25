FROM        ubuntu:zesty
MAINTAINER  Kotaimen <kotaimen.c@gmail.com>

ENV         DEBIAN_FRONTEND noninteractive

#
# Install packages
#
RUN         set -x \
            &&  apt-get -q update \
            &&  apt-get -yq --no-install-recommends install \
                    locales \
                    ca-certificates \
                    curl \
                    build-essential \
                    gcc \
                    imagemagick \
                    libmapnik3.0 \
                    mapnik-utils \
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
                    python3-mapnik \
                    python3-lxml \
                    \
                    npm

#
# Install carto
#
RUN         set -x \
            # Create a link for node otherwise carto install fails
            &&  ln -s /usr/bin/nodejs /usr/bin/node \
            &&  npm install -g carto millstone

#
# Patch missing gdal data file
#
RUN         curl -sSL http://cdn.knrdesign.co/dist/gdal-1.11.3/data/esri_extra.wkt > \
                /usr/share/gdal/2.1/esri_extra.wkt

