#!/bin/sh

# short script to automatically create a deb file from current anope git

git submodule init
git submodule update
git submodule foreach git pull
cp config.cache anope/
cd anope
./Config -quick
cd build
make -j2
make install
cd ../..

# at this point we have all needed binaries for our package



#  TODO: find out how to create a .deb from the binary files
#
#  services/bin/services      ->     /usr/bin/services
#  services/bin/{otherfiles}  ->     /usr/share/.../   (same directory as the example configs)
#  services/conf/*            ->     /usr/share/.../
#  services/lib/*             ->     /usr/lib/anope/ ?
#  services/locale/*          ->     /usr/share/locale/
#
#  ./anope.sh                 ->     /usr/bin/anope  (start script for anope)





