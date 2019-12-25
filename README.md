[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/Desdaemon/vn_keyboard_opt) 

# AdNW (Aus der Neo-Welt) for Vietnamese + English

Compiling recommendations:
```
g++ -std=c++11 -Wall -Ofast -DENGLISH -DNDEBUG -DOHNE2SHIFT \
    -DMIT_THREADS -pthread -DTASTENZAHL=33 opt.cc -o opt
```
The configuration file `standard.cfg` is set up for the 30 standard keys, two Shift keys and Space for a total of 33 keys.
Change the `DTASTENZAHL` compiler option to the number of keys needed.

See `Anleitung.pdf` for usage instructions.
