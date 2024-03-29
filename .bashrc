# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export EDITOR=vim
export PATH=~/.bin:$PATH

# Put your fun stuff here.
echo
neofetch

# Setup developer tools like golang

GO_VERSION=go-1.17.6
OPAM_VERSION=opam-2.1.2

export PATH=~/code/tools/${GO_VERSION}/bin:$PATH
export PATH=~/code/tools/${OPAM_VERSION}/bin:$PATH

# opam configuration
test -r /home/eatingthenight/.opam/opam-init/init.sh \
  && . /home/eatingthenight/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Go ENVs
export GOPATH=~/.cache/gopath
export PATH=~/.cache/gopath/bin:$PATH

# Node Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
