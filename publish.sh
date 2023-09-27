#! /bin/sh

fcg=../flatpak-builder-tools/cargo/flatpak-cargo-generator.py
src=../elk-native
tauriver=1.2.3
tauriname=tauri-cli
crates=https://static.crates.io/crates

#cargo new get-tauri && cd get-tauri
#cargo add 'tauri-cli@1.2.3'
#cd -
#"$fcg" 'get-tauri/Cargo.lock' -o cargo-tauri-cli-sources.json
#rm -rf get-tauri

curl "$crates/$tauriname/$tauriname-$tauriver.crate" | \
	tar zxv "$tauriname-$tauriver/Cargo.lock" && \
	"$fcg" -o cargo-tauri-cli-sources.json "$tauriname-$tauriver/Cargo.lock" && \
	rm -r "$tauriname-$tauriver"

#"$fcg" "$src/Cargo.lock" -o cargo-elk-sources.json


#              {
#                "type": "file",
#                "path": "Cargo.toml",
#                "dest": ".cargo",
#                "dest-filename": "config.toml",
#              },
