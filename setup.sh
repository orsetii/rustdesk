sudo apt install -y zip g++ gcc git curl wget nasm yasm libgtk-3-dev clang libxcb-randr0-dev libxdo-dev \
	libxfixes-dev libxcb-shape0-dev libxcb-xfixes0-dev libasound2-dev libpulse-dev cmake make \
	libclang-dev ninja-build libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev

(cd /opt &&
	git clone https://github.com/microsoft/vcpkg &&
	cd vcpkg &&
	git checkout 2023.04.15 &&
	cd .. &&
	vcpkg/bootstrap-vcpkg.sh &&
	export VCPKG_ROOT=/opt/vcpkg &&
	vcpkg/vcpkg install libvpx libyuv opus aom)

mkdir -p target/debug
wget https://raw.githubusercontent.com/c-smile/sciter-sdk/master/bin.lnx/x64/libsciter-gtk.so
mv libsciter-gtk.so target/debug
