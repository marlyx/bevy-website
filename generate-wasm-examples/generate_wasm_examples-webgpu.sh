#!/bin/sh

git init bevy-main
cd bevy-main
git remote add origin https://github.com/bevyengine/bevy
git pull --depth=1 origin main

cargo run -p example-showcase -- build-web-gpu-examples --content-folder content --website-hacks --optimize-size
cargo run -p example-showcase -- build-website-list --content-folder content

# mv content ../../content/examples-webgpu
