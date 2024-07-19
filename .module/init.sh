#!/usr/bin/env zsh

dir=$(dirname "$0")
for subdir in "$dir"/*; do
  if [[ -d "$subdir" ]]; then
    if [[ -f "$subdir/init.sh" ]]; then
      source "$subdir/init.sh"
    fi
  fi
done

