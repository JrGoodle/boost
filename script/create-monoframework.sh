#!/usr/bin/env bash

set -euo pipefail
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

BOOST_DIR="$(pwd)/boost"
BOOST_STAGE_DIR="$BOOST_DIR/stage"
STAGE_DIR="$(pwd)/stage"
FRAMEWORKS_DIR="$(pwd)/frameworks"

rm -rf "$STAGE_DIR"
mkdir -p "$STAGE_DIR"

combine_static_libs() {
    local PLATFORM_NAME="$1"

    COMBINED_OUTPUT_DIR="$STAGE_DIR/$PLATFORM_NAME/lib"
    mkdir -p "$COMBINED_OUTPUT_DIR"
    libtool -static -o "$COMBINED_OUTPUT_DIR/libboost.a" "$BOOST_STAGE_DIR/$PLATFORM_NAME/lib/"*.a
}

platforms=(
    'catalyst'
    'ios'
    'iossim'
    'macosx'
    'xros'
    'xrossim'
)

for platform in "${platforms[@]}"; do
    combine_static_libs "${platform}"
done

xcodebuild -create-xcframework \
    -library "$STAGE_DIR/macosx/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -library "$STAGE_DIR/catalyst/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -library "$STAGE_DIR/ios/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -library "$STAGE_DIR/iossim/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -library "$STAGE_DIR/xros/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -library "$STAGE_DIR/xrossim/lib/libboost.a" \
    -headers "$FRAMEWORKS_DIR/Headers" \
    -output "$(pwd)/boost.xcframework"
