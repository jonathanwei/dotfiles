#!/usr/bin/env zsh

while true; do
  ls /mnt/hgfs/db | sort -R | head -n 1 | xargs -I+ feh --bg-fill '~/Pictures/db/+'
  sleep 30
done
