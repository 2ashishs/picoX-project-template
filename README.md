# TLDR
A template to start building a `Pico` project using `Pico SDK` on Linux/MacOS.

# Quick Start

```shell
git clone https://github.com/2ashishs/picoX-project-template.git
cd picoX-project-template
PICO_PROJECT_TEMPLATE_PATH=$(pwd)
echo "export PICO_PROJECT_TEMPLATE_PATH=$PICO_PROJECT_TEMPLATE_PATH" >> ~/.zshrc # or ~/.bashrc
alias picox=$PICO_PROJECT_TEMPLATE_PATH/picoX.sh
echo "alias picox=$PICO_PROJECT_TEMPLATE_PATH/picoX.sh" >> ~/.zshrc # or ~/.bashrc
```

Then to create a new project `MY_PROJECT_NAME`, use the alias `picox` in the shell, as follows.
```shell
# for Pico-2W
picox MY_PROJECT_NAME 2w
# for Pico-2
picox MY_PROJECT_NAME 2
# for Pico-W
picox MY_PROJECT_NAME w
# for Pico
picox MY_PROJECT_NAME

cd MY_PROJECT_NAME
# Update your code, CMakeLists.txt and then
./do
```
This will build your project and store the executable `.uf2` file in the `build` directory.

Connect your `Pico` device in `BOOTSELECT` mode and copy the `.uf2` file
