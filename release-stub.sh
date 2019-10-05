#!/bin/bash -eu -o pipefail

RELEASE=$1
DATE=$2

echo "Generating stub in content/release-notes/1.${RELEASE}.md"

cat << EOF > content/release-notes/1.${RELEASE}.md
# Build ${RELEASE}

${DATE}

## Features

### Feature 1

Feature 1 detailed description.

## Improvements

- An improvement.

## Fixes

- A fix.

EOF
