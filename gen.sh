#/usr/bin/env bash!

set -euxo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

PATH=$(pwd)/..:$PATH;export PATH
echo "$PATH"

pushd $SCRIPT_DIR/../hello_world
pwd

# corepack enable

# if ! yarn list typescript; then
#     yarn add typescript --dev
# fi

# yarn tsc
# yarn node ./dist/app.js
