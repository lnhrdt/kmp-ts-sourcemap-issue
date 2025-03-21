#!/usr/bin/env sh

set -e

./gradlew build

echo Common JS package sourcemaps

echo kotlin-kotlin-stdlib.js.map
cat build/js/packages/mylib-common-js/kotlin/kotlin-kotlin-stdlib.js.map | jq '.sources'

echo mylib-common-js.js.map
cat build/js/packages/mylib-common-js/kotlin/mylib-common-js.js.map | jq '.sources'

echo

echo ES Modules package sourcemaps

echo kotlin-kotlin-stdlib.mjs.map
cat build/js/packages/mylib-es-modules/kotlin/kotlin-kotlin-stdlib.mjs.map | jq '.sources'

echo mylib-es-modules.mjs.map
cat build/js/packages/mylib-es-modules/kotlin/mylib-es-modules.mjs.map | jq '.sources'
