cd ~
git clone git@git.learning-tech.cn:realtimecat/janus-gateway.git
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt --enable-docs
make
make install
make configs
