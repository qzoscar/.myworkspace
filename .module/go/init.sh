#!/usr/bin/env zsh

if [ -f "${HOME}/.g/env" ]; then
    . "${HOME}/.g/env"
    export PATH="${HOME}/go/bin:$PATH"
    export PATH="$PATH:$HOME/.local/bin" # protobuf
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

