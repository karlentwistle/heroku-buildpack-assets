#!/usr/bin/env bash

unpack_packs () {
  local packs_name=$1
  local pack_manifest_path=$(get_env_variable ${env_dir} "PACKS_MANIFEST_PATH")

  tar -xf $build_dir/$pack_manifest_path/$packs_name -C $build_dir/$pack_manifest_path
  rm $build_dir/$pack_manifest_path/$packs_name
}
