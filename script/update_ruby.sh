#!/usr/bin/env bash
# shellcheck disable=SC1091

set -euo pipefail
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
. 'script/utils.sh'

h1 'Update Ruby dependencies'

h2 'Update bundler'
run gem install bundler --no-document

h2 'Update Ruby gems with bundler'
# run bundle update
run bundle install
