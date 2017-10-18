#!/bin/bash

make clean &&
make -j 8 &&
make sdk_install_pkg -j 8 &&
make psw_install_pkg -j 8 &&
sudo /opt/intel/sgxsdk/uninstall.sh &&
sudo /opt/intel/sgxpsw/uninstall.sh &&
cd linux/installer/bin &&
sudo ./sgx_linux_x64_psw_1.9.100.39124.bin &&
(echo -e "no\n/opt/intel\n" && cat) | sudo ./sgx_linux_x64_sdk_1.9.100.39124.bin
