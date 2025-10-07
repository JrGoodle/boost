#!/usr/bin/env bash
# shellcheck disable=SC1091

set -euo pipefail
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
. 'script/utils.sh'

ruby_version=$(read_trim_file .ruby-version)
h1 "Install rbenv Ruby version $ruby_version"
rbenv install --list
run rbenv install --skip-existing
run rbenv rehash
