function dockerup() {
  docker-machine start default
  eval "$(docker-machine env default)"
}

function dockerdown() {
  docker-machine stop default
}

function dockerip() {
  docker-machine start default 2> /dev/null
  echo $(docker-machine ip default)
}
