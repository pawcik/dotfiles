CWD=$(dirname $0)
GENCOMPL_FPATH=$HOME/.zsh/complete-generator
GENCOMPL_PY="python2.7"
mkdir -p $GENCOMPL_FPATH
source $CWD/source/zsh-completion-generator.plugin.zsh
