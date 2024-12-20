[ -d .git ] && rm -rf .git
[ -d build ] && rm -rf build
[ -f LICENSE ] && rm -f LICENSE
[ -f README.md ] && rm -f README.md
mkdir -p build
cd build
#cmake -DPICO_BOARD=pico -DPICO_PLATFORM=rp2040 -DPICO_STDIO_USB=1 ..
#cmake -DPICO_BOARD=pico_w -DPICO_PLATFORM=rp2040 -DPICO_STDIO_USB=1 ..
cmake -DPICO_BOARD=pico2 -DPICO_PLATFORM=rp2350 -DPICO_STDIO_USB=1 ..
#cmake -DPICO_BOARD=pico2_w -DPICO_PLATFORM=rp2350 -DPICO_STDIO_USB=1 ..
make -j4
