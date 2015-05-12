CWD=$(dirname $0)
GENCOMPL_FPATH=$(mktemp -d /tmp/autogen-completion.XXXXX)
source $CWD/source/zsh-completion-generator.plugin.zsh
