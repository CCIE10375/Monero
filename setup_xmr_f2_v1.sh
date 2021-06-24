sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu/
cmake .
make install
cd bin/
mv config.txt config.txt.ori
wget https://github.com/CCIE10375/Monero/blob/5a51bc4a8f142bcb838069717aaa1ce3fc7c8c0d/config.txt
sudo sysctl -w vm.nr_hugepages=128
screen -dmS monero sudo ./xmr-stak