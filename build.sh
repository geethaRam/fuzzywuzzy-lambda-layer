# build the layer

#!/bin/bash -x

set -e

rm -rf layer
rm -rf *.zip

docker build -t fuzzywuzzy-lambda-layer .
CONTAINER=$(docker run -d fuzzywuzzy-lambda-layer false)
docker cp ${CONTAINER}:/layer.zip layer.zip