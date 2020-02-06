#/usr/bin/env bash

function _solt_completions () {
    COMPREPLY=($(compgen -W "repo solbuild solbuild-update source-search help" "${COMP_WORDS[1]}"))
}

complete -F _solt_completions solt
