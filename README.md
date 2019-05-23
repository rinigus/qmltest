# Simple QML test codes

These test codes are based on examples in QML / Qt tutorials and made for 
accessing basic QML functionality. Instructions are made for Debian-based
distros using Wayland, adjust as required.

All tests are expected to be run using `qmlscene`. Install it and
several other packages used in the tests

```
sudo apt install qmlscene qtwayland5 qml-module-qtquick2 qml-module-qtquick-window2 \
qml-module-qtlocation qml-module-qtpositioning
```


Run commands from the cloned repo folder.

Hello world: `qmlscene -platform wayland test_simple.qml`

Raster map: `qmlscene -platform wayland map_raster.qml`


If MapboxGL plugin is not disabled in the distribution, it can be tested
with

Online maps: `qmlscene -platform wayland map_mapboxgl.qml`

Offline (requires OSM Scout Server running on the same device): 
`qmlscene -platform wayland map_mapboxgl_offline.qml`

