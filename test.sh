#!/usr/bin/env bash

zstd="bazel-out/darwin_arm64-opt/bin/external/zstd~/zstd_cli"
cat testdata/test.txt.gz | $zstd --decompress | shasum -a 256
cat testdata/test.txt.zst | $zstd --decompress | shasum -a 256
cat testdata/test.txt.xz | $zstd --decompress | shasum -a 256
cat testdata/test.txt.lzma | $zstd --decompress | shasum -a 256
cat testdata/test.txt.lz4 |  $zstd --decompress | shasum -a 256
