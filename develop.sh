# !/bin/bash
docker image build -t minigrep-build-image -f Dockerfile.build .
# Create container from the build Docker image
docker container create --name minigrepv2-build-container minigrep-build-image
  
# Copy build items from build container to the local filesystem 
docker container cp minigrepv2-build-container:/myawesomeapp/target/debug/minigrep .
docker container cp minigrepv2-build-container:/myawesomeapp/poem.txt .
# Build the runtime Docker image 
docker image build -t minigrep-runtime-image . 
# Remove the build Docker container
docker container rm -f minigrepv2-build-container 

rm minigrep