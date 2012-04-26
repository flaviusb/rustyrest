#!/bin/bash

cargo init
cargo sync
rm -rf .cargo/work/*
PACKAGES="uri pcre sqlite zmq"
for i in $PACKAGES
do
cargo install "central/$i"
done
cp .cargo/work/*/build/*.so .cargo/bin
cp .cargo/work/*/build/*.so .cargo/lib
