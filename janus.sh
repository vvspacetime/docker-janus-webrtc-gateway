cd ~
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
git checkout shishimao
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt  --enable-post-processing
make
make install
make configs
