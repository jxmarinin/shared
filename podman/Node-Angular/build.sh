

#!/bin/bash

# Define default versions
NODE_VERSION=${1:-18.19.1}
ANGULAR_VERSION=${2:-18}

# Build the container image using Podman
podman build --build-arg NODE_VERSION=${NODE_VERSION} --build-arg ANGULAR_VERSION=${ANGULAR_VERSION} -t node-${NODE_VERSION}-ang-${ANGULAR_VERSION} .

echo "Container image node-${NODE_VERSION}-ang-${ANGULAR_VERSION} built successfully."

 podman tag node-18.19.1-ang-18  ang${ANGULAR_VERSION}
