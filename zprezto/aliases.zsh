# Vagrant
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias vbu='vagrant box update'
alias vss='vagrant status'

# Xprop
alias xpropc='xprop | awk '"'"'{ if($1 == "WM_CLASS(STRING)")print $4;}'"'"' '