#!/usr/bin/env bash

set -euo pipefail
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

rm -rf \
    boost-iosx/boost \
    boost-iosx/boost*.tar.bz2 \
    boost-iosx/frameworks* \
    boost-iosx/scripts/Pods \
    boost-iosx/scripts/Podfile.lock \
    boost-iosx/scripts/ICUdep.xcworkspace
