cd ~
git clone https://jingweiming@git.learning-tech.cn/realtimecat/janus-gateway.git
cd janus-gateway
git checkout shishimao
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt  --enable-post-processing
make
make install
make configs
