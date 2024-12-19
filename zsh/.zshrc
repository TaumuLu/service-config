export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n) \
%{$fg[white]%}@ \
%{$fg[green]%}%M \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
 \
%{$fg[white]%}[%*] $exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

local zshPluginsPath=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

local autosuggestions=$zshPluginsPath/zsh-autosuggestions
local highlighting=$zshPluginsPath/zsh-syntax-highlighting

if [ ! -d $autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${autosuggestions} --depth=1
fi
if [ ! -d $highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${highlighting} --depth=1
fi

source $ZSH/oh-my-zsh.sh
