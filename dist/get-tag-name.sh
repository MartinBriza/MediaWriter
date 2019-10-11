#!/bin/bash

PROBABLY_TAG=${GITHUB_REF/refs\/tags\//}

grep "^[0-9][0-9]*[.][0-9][0-9]*[.][0-9][0-9]*$" <<< "$PROBABLY_TAG"

exit 0
