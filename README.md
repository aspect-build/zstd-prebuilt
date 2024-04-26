This repository builds binary releases for pigz.

It's a workaround for https://zlib.net/pigz not including prebuilt binaries.

It is built using the Bazel module at https://registry.bazel.build/modules/pigz
using a musl toolchain from https://registry.bazel.build/modules/hermetic_cc_toolchain
so it is fully statically-linked and does not depend on any libc version at runtime.

## Attribution

Initial work for releasing prebuilt binaries for bsdtar was done by @dzbarsky, this is a fork that 
does the same for pigz.

## Releasing

1. MODULE.bazel should point to the latest pigz on Bazel Central Registry.
   Renovate bot will send a PR.
2. Push a tag to the repo, will kick off automated build on GitHub Actions.
