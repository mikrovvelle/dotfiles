#!/bin/bash
cd "$(dirname "$0")"
function doIt() {
    rsync --exclude ".*_history" \
          --exclude ".*~" \
          --exclude ".CFUserTextEncoding" \
          --exclude ".eclipse_keyring" \
          --exclude ".lesshst" \
          --exclude ".netrc" \
          --exclude ".recently-used" \
          --exclude ".rnd" \
          --exclude ".spring_roo_pgp.bpg" \
          --exclude ".viminfo" \
          --exclude ".Xauthority" \
          --exclude ".DS_Store" \
          -v ~/.* .
}
unset doIt
