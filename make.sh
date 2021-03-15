#!/bin/bash

ROOT=$(dirname "$PWD");
PACKAGES="$PWD/packages";

FLOW="$ROOT/flow/source";
DASHBOARD="$ROOT/dashboard/source";

mkdir -p packages;

[ ! -d "$PWD/node_modules/total4" ] && npm install;

cd "$FLOW" && total4 --package "$PACKAGES/flow.package";
cd "$DASHBOARD" && total4 --package "$PACKAGES/dashboard.package";