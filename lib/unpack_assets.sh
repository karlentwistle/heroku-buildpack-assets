#!/usr/bin/env bash

unpack_assets () {
  local assets_name=$1
  local asset_manifest_path=$(get_env_variable ${env_dir} "ASSET_MANIFEST_PATH")

  tar -xf $build_dir/$asset_manifest_path/$assets_name -C $build_dir/$asset_manifest_path
  rm $build_dir/$asset_manifest_path/$assets_name
}
