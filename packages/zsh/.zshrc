eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/k/dev/mell-fam/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/k/dev/mell-fam/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/k/dev/mell-fam/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/k/dev/mell-fam/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/k/dev/mell-fam/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/k/dev/mell-fam/node_modules/tabtab/.completions/slss.zsh
