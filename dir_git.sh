#get branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#PS1='\[\033[0;32m\]\u\[\033[00m\] in \[\033[0;32m\]$( pwd ) ($( OUT=$( ls -A | wc -l ); echo $OUT ) entries, $(( $( ls -A | wc -l ) - $( ls | wc -l ) )) hidden)\n\[\033[1;32m\]\# \! \$\[\033[;m\] '

PS1='\[\033[0;32m\]\u\[\033[00m\] in \[\033[0;32m\]$( pwd ) ($( OUT=$( ls -A | wc -l ); echo $OUT ) entries, $(( $( ls -A | wc -l ) - $( ls | wc -l ) )) hidden)\n\[\033[1;32m\]\# \! \$\[\033[;m\] \u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ '
