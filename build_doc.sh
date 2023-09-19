#!/bin/sh

 ##################################################################################
 # Script to build a documentation for GitHub Pages.                              #
 #                                                                                #
 # Usage:                                                                         #
 #   $ ./build_doc.sh                                                             #
 #                                                                                #
 ##################################################################################

set -euxo pipefail

swift package --allow-writing-to-directory ./docs \
    generate-documentation --experimental-enable-custom-templates \
    --target InTouchClient \
    --output-path ./docs \
    --transform-for-static-hosting \
    --hosting-base-path in-touch-client