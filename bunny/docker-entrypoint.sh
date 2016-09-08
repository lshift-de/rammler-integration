#!/bin/bash -e

command=$1

cd /bunny

case "$command" in
    prepare)
        bin/ci/before_build        
    ;;
    *)
        bundle exec rake rammler $*
    ;;
esac
