#!/usr/bin/env bash

swift build -c release
cp .build/release/reswift /usr/local/bin/reswift