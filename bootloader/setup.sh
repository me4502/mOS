wget http://www.tysos.org/files/efi/mkgpt-latest.tar.bz2
tar jxf mkgpt-latest.tar.bz2
cd mkgpt && ./configure && make && sudo make install && cd ..
rm -rf mkgpt-latest.tar.bz2