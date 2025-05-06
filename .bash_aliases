# Networking
alias myip='curl -w "\n" http://whatismyip.akamai.com/'
alias who='whoami && curl -w "\n" ident.me'
alias ping3='ping -c 3'

# For coding
alias v='vim'
alias py3='python3'

# directory traversal
alias mkcd='function _mkcd(){ mkdir -p "$1" && cd "$1"; }; _mkcd'
alias back='_back'
alias home='cd ~'
alias rmdir='rm -ir'
alias c='clear'

# Coredumping for GDB
alias coredump='ulimit -c unlimited && ulimit -a'
alias nocore='ulimit -c 0 && ulimit -a'

# Updating the System
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'
alias newinstall='sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y install build-essential'

function _back() {
    local dir_count=${1:-1}  # Default to 1 if no argument is provided
    cd "$(printf '../%.0s' $(seq 1 $dir_count))" || return
}
