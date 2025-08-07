This repository builds binary releases for zstd.

It is built using the Bazel module at https://registry.bazel.build/modules/zstd
using a musl toolchain from https://registry.bazel.build/modules/hermetic_cc_toolchain
so it is fully statically-linked and does not depend on any libc version at runtime.

## Attribution

Initial work for releasing prebuilt binaries for bsdtar was done by @dzbarsky, this is a fork that 
does the same for zstd.

## Releasing

1. MODULE.bazel should point to the latest zstd on Bazel Central Registry.
   Renovate bot will send a PR.
2. Push a tag to the repo, will kick off automated build on GitHub Actions.

## Windows
set BAZEL_SH=path/to/bash
bazel build //...
bazel build --platforms @zig_sdk//platform:windows_arm64 //...
