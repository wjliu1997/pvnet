#!/bin/bash
export ROOT_PATH=$1
mkdir -p $ROOT_PATH/ceres
cd $ROOT_PATH/ceres
wget https://nj02all01.baidupcs.com/file/8973b5957k3083558339eac2644fdb22?bkt=en-e031c0692dcd5a21b1d481452bf5e2f8bf4d6de8fdcaa15e926819b91f8dc74933788ce6945dde9d&fid=308204944-250528-9255849550034&time=1578633714&sign=FDTAXGERLQlBHSKfW-DCb740ccc5511e5e8fedcff06b081203-d2GKrhDz6GxOBZFAwG3cHgMpPYM%3D&to=69&size=5450130&sta_dx=5450130&sta_cs=1&sta_ft=gz&sta_ct=3&sta_mt=3&fm2=MH%2CYangquan%2CAnywhere%2C%2CNone%2Cany&ctime=1577692390&mtime=1577692390&resv0=-1&resv1=0&resv2=rlim&resv3=5&resv4=5450130&vuk=308204944&iv=0&htype=&randtype=&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=en-6f27bb325e1b648028c2260dbfcbad298404d1b382aae3b89e193de1f5e1c7f3aa312bec38a09598&sl=76480590&expires=8h&rt=sh&r=279513312&vbdid=2634486806&fin=ceres-solver-1.14.0.tar.gz&fn=ceres-solver-1.14.0.tar.gz&rtype=1&dp-logid=221650742654495781&dp-callid=0.1&hps=1&tsl=80&csl=80&fsl=-1&csign=xbDJOgRaIBWtl4uAnTs%2BhkOw1TQ%3D&so=0&ut=6&uter=4&serv=0&uc=600219412&ti=26fa64dbec288224d6de461a01c64ca9a270132ae03cc2ad305a5e1275657320&reqlabel=250528_f_e1e30276e68c83e6fe5e25874dda75bc_-1_22118fe1e416f7aae4073c385ece8d31&by=themis
tar xvzf ceres-solver-1.14.0.tar.gz
cd ceres-solver-1.14.0
sed -i 's/\(^option(BUILD_SHARED_LIBS.*\)OFF/\1ON/' CMakeLists.txt
rm -rf build
mkdir build
cd build
cmake ..
make -j8
sudo make install
