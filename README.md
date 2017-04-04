# Mapnik

Python Mapnik in Docker.

## Tags

- `3.0.12-ubuntu` : ([Dockerfile](https://github.com/Kotaimen/docker-mapnik/blob/master/Dockerfile))
    - Base System: 
        - `ubuntu-zesty` (`17.04`)
        - `python-3.5`
        - `cython-0.25.2`
    - GIS & Cartography:
        - `gdal-2.1` 
        - `geos-3.5`
        - `freetype-2.6.3`
        - `harfbuzz-1.4.2`
        - `numpy-1.12.0`
        - `scipy-0.18.1`
        - `mapnik-3.0.12` 
        - `carto-0.9.5`
    - Imaging:
        - `imagemagick-6.9.7.4`
        - `Pillow-4.0.0`

- `3.0.9-ubuntu` : ([Dockerfile](https://github.com/Kotaimen/docker-mapnik/blob/master/Dockerfile))
    - Base System: 
        - `ubuntu-xenial` (`16.04`)
        - `python-2.7`
        - `python-3.5`
        - `cython-0.23.4` (python2&3)
    - GIS & Cartography:
        - `gdal-1.11.3` 
        - `geos-3.5`
        - `freetype-2.6.1`
        - `harfbuzz-1.0.1`
        - `numpy-1.11.0` (python2&3)
        - `scipy-0.17.0` (python2&3)
        - `mapnik-3.0.9` 
    - Imaging:
        - `imagemagick-6.8.9.9`
        - `Pillow-3.1.2` (python2&3)
