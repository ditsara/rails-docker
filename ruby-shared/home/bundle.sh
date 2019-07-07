#!/bin/bash
bundle check || bundle install --path=${BUNDLE_PATH}
yarn check --verify-tree || yarn install
