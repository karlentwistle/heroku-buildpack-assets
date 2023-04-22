#!/usr/bin/env bash

unpack_assets () {
  local assets_path=$1
  local asset_manifest_path=$(get_env_variable ${env_dir} "ASSET_MANIFEST_PATH")

  tar -xf $assets_path -C $asset_manifest_path
}
