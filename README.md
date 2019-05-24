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


## Kirigami

For testing Kirigami, use Kirigami Gallery application.

First, install Kirigami and few extra packages:

```
sudo apt install qml-module-org-kde-kirigami2 qml-module-qtquick-layouts
```

Clone Kirigami:

```
git clone https://github.com/KDE/kirigami-gallery.git
```

and run it after using a version supported by your distribution
```
cd kirigami-gallery
git checkout b86680a227ac4356097bb22466d50fd8e7b55ae5
qmlscene -platform wayland src/data/contents/ui/BaseApp.qml
```
