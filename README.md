# muccc assembly

## Mitmachen

### Software
#### Pixeln

free, open source: [krita](https://krita.org/)

commercial (with free trial) [aseprite](https://www.aseprite.org/)

#### Kartenbearbeitung

[tiled](https://www.mapeditor.org/)

### überblick und anleitung der tools:
[tutorial & resources](https://codimd.c3d2.de/WA-Zone-Einstieg-06)

[official documentation](https://workadventu.re/map-building/)

[rc3 doku](https://howto.rc3.world)


Da voraussichtlich einige von uns gleichzeitig an der assembly arbeiten werden beachtet bitte folgendes um merge-konflikte zu vermeiden:

* zusatzliche tiles in `/tiles_png/`
* selbstgepixeltes src files gehören nach `/tiles_src`
* benutzt dabei deskriptive dateinamen &
* legt unterordner für verschiedene kategorien an

* wenn ihr anfangt einen neuen bereiche in einer bestehenden map zu erstellen, benutzt das `zoning`-layer um diesen zu reservieren (commit & push nicht vergessen)

* commits:
  * lieber kleine & viele, als riesige änderungen auf einen schlag
  * pusht häufig, damit die andern eueren vorschitt sehen!
  * pullt regelmäßig, damit ihr seht was die anderen machen!
  * verständliche commit messages!

und das wichtigste: Stimmt euch ab!!!

### Testing
[µc³-testassembly](http://play.world.fem-net.de/_/global/raw.githubusercontent.com/muccc/rc3test/master/main.json)
