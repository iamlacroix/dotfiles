# ps aux | grep $@
function psg() {
  ps aux | grep $@
}

# mkdir && cd !$
function mk() {
  mkdir -p "$@" && cd "$@"
}
