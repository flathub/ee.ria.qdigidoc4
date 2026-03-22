#!/usr/bin/env bash
set -euo pipefail

MANIFEST="$(dirname "$0")/../../ee.ria.qdigidoc4.yml"

update() {
  local url="$1"

  new_sha256=$(curl -fsSL "$url" | sha256sum | cut -d' ' -f1)
  old_sha256=$(grep -FA2 "url: $url" "$MANIFEST" | grep sha256 | awk '{print $2}')

  if [ "$new_sha256" = "$old_sha256" ]; then
    echo "UP-TO-DATE: $url"
  else
    sed -i "\|url: ${url}|{n; s/sha256: [a-f0-9]*/sha256: ${new_sha256}/}" "$MANIFEST"
    echo "UPDATED: $url ($old_sha256 -> $new_sha256)"
  fi
}

update "https://ec.europa.eu/tools/lotl/eu-lotl.xml"
update "https://sr.riik.ee/tsl/estonian-tsl.xml"
update "https://id.eesti.ee/config.json"
update "https://id.eesti.ee/config.rsa"
update "https://id.eesti.ee/config.pub"
