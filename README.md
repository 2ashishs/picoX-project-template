# TLDR
A template to start building a `Pico` project using `Pico SDK`.

# Quick Start
On Linux/MacOS, add the following `alias` in shell rc file (i.e. `~/.bashrc` or `~/.zshrc`).

`alias picoX="git clone https://github.com/2ashishs/picoX-project-template.git"`

Then to create a new project `MY_PROJECT_NAME`, simply type the following in shell.
```sh
picoX MY_PROJECT_NAME
cd MY_PROJECT_NAME
# Add/Edit your code in my_program.c and CMakeLists.txt
./do # or sh ./do
```


# Detailed Instructions

- Install Pico SDK (For reference: [helper scripts](https://github.com/2ashishs/pico-setup-ubuntu))

- Clone this repo as your project-name.
`git clone https://github.com/2ashishs/picoX-project-template.git MY_PROJECT_NAME`

- Go into your project directory and code you program in `my_program.c`.

```sh
cd MY_PROJECT_NAME
nano my_program.c
```

You may need to update `CMakeLists.txt` to include libraries as per your code.

- If you are on Linux/MacOS, you can then run, `sh do` or `./do` to compile and build your project. This will create a `build` directory, which will contain your `.uf2` file. 

*NOTE*:`do` will also delete `LICENSE` file, `README.md` file and the `build` directory. You are free to modify the `do` script as per your needs.

*NOTE*:`do` by default, compiles for `Pico 2`. Comment-out and uncomment the `cmake` line in the `do` file, as per your target device.

- Connect your `Pico` device in `BOOTSELECT` mode and copy the `.uf2` file onto your `Pico` device file system.

