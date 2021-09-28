set -g theme_color_scheme gruvbox
set PATH /usr/lib $PATH
set PATH ~/.cargo/bin $PATH

# Some abbreviations
abbr sync_start 'onedrive --synchronize --verbose --enable-logging --single-directory "PG"'
abbr mdd 'mkdir (date +%y-%m-%d)'
abbr rn 'cd ~/workspace/mphil-reading/research-readings'
abbr wn 'cd ~/workspace/mphil-reading/research-readings && nvim'
abbr mn 'cd ~/workspace/mphil-reading/research-readings && mkdir (date +%y-%m-%d) && touch ./(date +%y-%m-%d)/sub.tex'
abbr wmn 'cd ~/workspace/mphil-reading/research-readings && mkdir (date +%y-%m-%d) && touch ./(date +%y-%m-%d)/sub.tex && nvim'
abbr refresh 'source ~/.config/fish/config.fish'
abbr vconfig 'cd ~/.config/nvim/ && nvim'
abbr fconfig 'cd ~/.config/fish/ && nvim'

# abbr smerge "flatpak run com.sublimemerge.App ./"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/jacfger/anaconda3/bin/conda "shell.fish" hook $argv | source
# <<< conda initialize <<<
