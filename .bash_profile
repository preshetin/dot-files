alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
alias sshddstage='ssh -t preshetin@138.197.196.62 "cd /var/www/donation-stage.dhamma-dullabha.org/web/donations; source ~/.profile;   bash"'
alias sshddprod='ssh -t preshetin@138.197.196.62 "cd /var/www/donation.dhamma-dullabha.org/web/donations; source ~/.profile;   bash"'
alias ctags="`brew --prefix`/bin/ctags"
alias vartusblogdeploy="gatsby build --prefix-paths ; aws s3 sync public s3://vartuseu-discover/blog"

export PATH=/Users/petrreshetin/Library/Python/2.7/bin:$HOME/bin:/usr/local/mysql/bin:/usr/local/Cellar/node/8.6.0/bin:$HOME/.composer/vendor/bin:$PATH
#source ~/.profile

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

chrome () {
    open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "$1"
}

# Old mac
#alias gs='git status '
#alias ga='git add .'
#alias gb='git branch '
#alias gc='git commit'
#alias gd='git diff'
#alias go='git checkout '
#alias nah='git reset --hard; git clean -df'
#alias art='php artisan '
#alias env='./env '
alias vm="ssh vagrant@127.0.0.1 -p 2222"

#source ~/.git-completion.bash
__git_complete go _git_checkout
__git_complete gm _git_merge
__git_complete gb _git_branch

alias gs='git status '
alias ga='git add .'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gm='git merge '
alias gac='git add --all ; git commit '
alias nah='git reset --hard; git clean -df'

alias art='php artisan '
alias tinker='php artisan tinker'

eval $(/usr/libexec/path_helper -s)

# added by Anaconda2 4.3.1 installer
#export PATH="/anaconda/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/petrreshetin/.cfg/ --work-tree=/Users/petrreshetin'

# added by Anaconda2 5.2.0 installer
#export PATH="/Users/petrreshetin/anaconda2/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/petrreshetin/Desktop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/petrreshetin/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/petrreshetin/Desktop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/petrreshetin/Desktop/google-cloud-sdk/completion.bash.inc'; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
