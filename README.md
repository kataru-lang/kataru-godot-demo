# kataru-godot-demo
Demo using Kataru in Godot.

## Installation

From you Godot project, run:

```sh
git submodule add https://github.com/kataru-lang/kataru-godot addons/kataru
cd addons/kataru
# Build commands will change based on your target platform
cargo build --target x86_64-pc-windows-msvc --all-features
cargo build --target x86_64-pc-windows-msvc --all-features --release
```

Then add a Kataru.gdextension file to tell Godot where to find the build DLLs:

```toml
[configuration]
compatibility_minimum = 4.1
entry_symbol = "gdext_rust_init"

[libraries]
linux.debug.x86_64 = "res://../kataru-godot/target/debug/libkataru-godot.so"
linux.release.x86_64 = "res://../kataru-godot/target/release/libkataru-godot.so"
macos.debug = "res://../kataru-godot/target/debug/libkataru-godot.dylib"
macos.debug.arm64 = "res://../kataru-godot/target/debug/libkataru-godot.dylib"
macos.release = "res://../kataru-godot/target/release/libkataru-godot.dylib"
macos.release.arm64 = "res://../kataru-godot/target/release/libkataru-godot.dylib"
windows.debug.x86_64 = "res://../kataru-godot/target/debug/kataru-godot.dll"
windows.release.x86_64 = "res://../kataru-godot/target/release/kataru-godot.dll"
```