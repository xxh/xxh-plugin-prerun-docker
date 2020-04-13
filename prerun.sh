CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export XXH_DOCKER_HOME=$HOME/.docker
export XXH_DOCKER_RUNTIME=$XXH_DOCKER_HOME/runtime
export XXH_DOCKER_LOG=$HOME/.docker/dockerd-rootless.log
export PATH=$CDIR:$CDIR/docker-rootless:$PATH
export DOCKER_HOST=unix://$XXH_DOCKER_RUNTIME/docker.sock
