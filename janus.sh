cd ~
git clone https://jingweiming@git.learning-tech.cn/realtimecat/janus-gateway.git
cd janus-gateway
git checkout 8bfa9a3
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt  --enable-post-processing
make
make install
make configs
