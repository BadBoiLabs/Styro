set positional-arguments

default:
  @just --list

cairo2wat cairofile:
    #!/usr/bin/env bash
    set -euxo pipefail

    source ./env-macos.sh

    filename=$(basename $1 .cairo)

    # translate cairo to MLIR
    cairo-native-dump $1 -o $filename.mlir

    # translate dialect to LLVM
    "$MLIR_SYS_170_PREFIX"/bin/mlir-opt --canonicalize --convert-scf-to-cf --canonicalize --cse --expand-strided-metadata --finalize-memref-to-llvm --convert-func-to-llvm --convert-index-to-llvm --reconcile-unrealized-casts $filename.mlir -o $filename.mlir

    # translate to LLVM IR
    "$MLIR_SYS_170_PREFIX"/bin/mlir-translate --mlir-to-llvmir $filename.mlir -o $filename.ll

    # build and link!
    "$MLIR_SYS_170_PREFIX"/bin/clang $filename.ll ./target/wasm32-unknown-unknown/debug/deps/libstyro.ll -Wno-override-module --target=wasm32-freestanding -o $filename.wasm -nostdlib -L "$MLIR_SYS_170_PREFIX"/lib -Wl,--no-entry -Wl,--export=$filename::$filename::user_entrypoint -Wl,--export=call_memory_grow -Wl,--allow-undefined

    # convert to WAT
    wasm2wat $filename.wasm -o $filename.wat

zig2wat zigfile:
  #!/usr/bin/env bash
  set -euxo pipefail

  filename=$(basename $1 .zig)
  zig build-lib $1 -target wasm32-freestanding -dynamic --export=user_entrypoint -OReleaseSmall --export=mark_unused
  wasm2wat $filename.wasm -o $filename.wat

build:
  rustc --crate-type=lib --emit=llvm-ir --target wasm32-unknown-unknown ./src/lib.rs -o styro.ll
