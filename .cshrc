# $FreeBSD: head/share/skel/dot.cshrc 278616 2015-02-12 05:35:00Z cperciva $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv	BLOCKSIZE	K
# A righteous umask
# umask 22

setenv	EDITOR	vi
setenv	PAGER	less

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
setenv ESBUILD_BINARY_PATH /home/marto/repos/esbuild/esbuild

set path = ($HOME/bin $path)

setenv LANG en_US.UTF-8
setenv LC_ALL en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8

setenv PERL5LIB ~/perl5/lib/perl5
setenv PATH ${HOME}/Downloads/fzf/bin:${PATH}
setenv TERM screen-256color
alias config '/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

setenv JAVA_HOME /usr/local/openjdk11
