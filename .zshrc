# Mount/initialize asdf
. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

#Setup Java
export JAVA_HOME=/Users/cliftoncraig/Library/Java/JavaVirtualMachines/openjdk-21/Contents/Home
export PATH="$PATH:$JAVA_HOME/bin"

#Configure PATH inclusion of npm bin executables
export _NPM_BIN_PATH=./node_modules/.bin
export PATH="$PATH:$_NPM_BIN_PATH"

#Configure local shell utilities
export PATH="$PATH:$HOME/bin"
# pnpm
export PNPM_HOME="/Users/cliftoncraig/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end