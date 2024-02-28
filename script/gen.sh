#/usr/bin/env bash!

set -euo pipefail

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
root="$script_dir"/..
hello="$root"/hello

PATH="$root:$PATH";export PATH # For the dotslash files in root.

pushd "$hello"

corepack enable
if ! yarn list typescript > /dev/null 2>&1 ; then
    yarn add typescript --dev
fi
yarn tsc
yarn node ./dist/app.js

popd
