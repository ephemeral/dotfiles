HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

##############################
# Completion Styles
##############################

# run rehash on completion so new installed program are found automatically:
_force_rehash() {
    (( CURRENT == 1 )) && rehash
    return 1
}


##############################
# Functions
##############################

##############################
# ENVIRONMENT VARIABLES
##############################

export EDITOR=vim
export PAGER=most
# set terminal property (used e.g. by msgid-chooser)
export COLORTERM="yes"

# buildr option to use fast scala compiler
export USE_FSC=yes

export LC_ALL="en_US.UTF-8"

# set colors
#if test -x =dircolors; then
#	eval "`dircolors`"
#	export LS_COLORS="*.ogm=01;35:${LS_COLORS}"
#	export ZLS_COLORS=$LS_COLORS
#fi

#grmlcomp

# read from .zsh.d/*
for zshrc_snipplet in ~/.zsh.d/[0-9][0-9]*[^~] ; do
	source $zshrc_snipplet
done

# vim:ts=4:sw=4:expandtab:cindent
