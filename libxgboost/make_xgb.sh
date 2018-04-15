apt update
apt install git cmake build-essential -y

cd home
git clone --recursive https://github.com/dmlc/xgboost
cd xgboost

mkdir build
cd build
cmake .. -DUSE_CUDA=ON
make -j
