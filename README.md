# C++ VCPKG TEMPLATE

Base Template for using vcpkg with cmake and make to run commands to build the project.
It also includes clang formatting using .clang-format and an clangd config .clangd for C++23.

# Use

```bash
# git clone this project using
git clone https://github.com/xunicatt/vcpkg-cmake-template.git
# rename it to your project name
mv vcpkg-cmake-template <your-project-name>
# cd into it
cd <your-project-name>
# modify the Makefile's PROJECT variable to your project name
# you might need to modify .clangd's "-I" include directory argument to "vcpkg_installed/<your-platform>/include"
# default is: x64-linux
# and remove .git folder
rm -rf .git
# use it using :
# first install the vcpkg packages and build presets
make install
# then build the project
make build
# and finally run it
make run
# just exectuing make will perform install, build and run commands
make
```
