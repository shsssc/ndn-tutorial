apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y sudo g++ pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev git nano libpcap-dev psmisc
apt-get clean
cd /root

git clone https://github.com/named-data/ndn-cxx.git
cd ndn-cxx
git checkout ndn-cxx-0.7.1
./waf configure
./waf -j`nproc`
./waf install
sudo ldconfig
cd ..

git clone --recursive https://github.com/named-data/NFD.git
cd NFD
git checkout NFD-0.7.1
./waf configure 
./waf -j`nproc`
./waf install
cd ..
sudo cp /usr/local/etc/ndn/nfd.conf.sample /usr/local/etc/ndn/nfd.conf

git clone https://github.com/named-data/ndn-tools
cd ndn-tools
git checkout ndn-tools-0.7.1
./waf configure 
./waf -j`nproc`
./waf install


