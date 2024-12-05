# TLDR
A template to start building a `Pico 2` project using `Pico SDK`.

# Getting Started
- Install Pico SDK (For reference: [helper script](https://github.com/2ashishs/pico-setup-ubuntu))

- Clone this repo as your project-name.
`git clone https://github.com/2ashishs/pico2-project-template.git MY_PROJECT_NAME`

- Go into your project directory and code you program in `my_program.c`.
```sh
cd MY_PROJECT_NAME
nano my_program.c
```
You may need to make changes in `CMakeLists.txt` to include libraries as per your source code.

- If you are on Linux/MacOS, you can then run, `sh do` to compile and build your project. This will create a `build` directory, which will contain your `.uf2` file.

- Connect the `Pico 2` in `BOOTSELECT` mode and copy the `.uf2` file onto the `Pico 2` file system.
