git branch -r | grep -v HEAD | while read b; do git log --color --format="%ci _%C(magenta)%cr %C(bold cyan)$b%Creset %s %C(bold blue)<%an>%Creset" $b | head -n 1; done | sort -r | cut -d_ -f2- | sed 's;origin/;;g' | head -10
