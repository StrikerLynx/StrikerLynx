#########################################
#			My Random .bashrc			#
#########################################
#										#
#--------Source-Global-Definitions------#
if [ -f /etc/bashrc ]; then				#
	. /etc/bashrc						#
fi										#
#-----------Custom-Directories----------#
export PATH="$HOME/.local/bin:$PATH"	#
#------------Directory-Alias------------#
export git="$HOME/Dev_Stuff/Git"		#
export per="$HOME/Dev_Stuff/Personal"	#
export dwn="$HOME/Dev_Stuff/Downloads"	#
export doc="$HOME/Dev_Stuff/Documents"	#
#--------------Other-Alias--------------#
alias ls="ls -a"						#
alias cls="clear"						#
alias lg="lazygit"						#
alias kw="kwrite"						#
alias qqq="exit"						#
alias dol="dolphin"						#
alias kt="kate"							#
alias gv="gvim"							#
#---------------------------------------#
#########################################
