#!/bin/bash

#docker run --rm -it -v `pwd`:/source jasonuhl/rust-wasm rustc --target=wasm32-unknown-emscripten hello.rs

#cargo build --target wasm32-unknown-emscripten --release

docker run --rm -it -v `pwd`:src -w /src wasm-docker bash -c '
    emcc hello.c -Os -s WASM=1 -s SIDE_MODULE=1 -s \'BINARYEN_METHOD="native-wasm"\' -o hello.wasm
'
