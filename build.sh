#!/bin/bash

emcc src/nqueen/nqueens.c -Os -s WASM=1 -s SIDE_MODULE=1 -s 'BINARYEN_METHOD="native-wasm"' -o src/nqueen/nqueens.wasm
