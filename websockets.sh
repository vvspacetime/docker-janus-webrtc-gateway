cd ~
git clone https://github.com/warmcat/libwebsockets.git
cd libwebsockets
git checkout v2.4-stable
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make && sudo make install