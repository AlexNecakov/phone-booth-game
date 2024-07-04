@echo off
if exist build (
  rmdir /s /q build
)
mkdir build

pushd build

clang -g -o cgame.exe ../build.c -O0 -mavx -std=c11 -Wextra -Wno-incompatible-library-redeclaration  -Wno-sign-compare -Wno-unused-parameter -Wno-builtin-requires-header -lgdi32 -luser32  -lwinmm -ld3d11 -ldxguid -ld3dcompiler 

popd