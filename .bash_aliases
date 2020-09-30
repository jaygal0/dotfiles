# place this file /etc/profile.d/

# to list with long listing & human readable
alias lls='ls -lh'

# to create a copy of the template file, save it to the current date and edit it
alias new='cp template.md $(date +%Y%m%d).md && vim $(date +%Y%m%d).md'

# to start the sudo crontab in the background for Windows only 
alias scron='sudo service cron start'

# to remove .exe
alias clip='clip.exe'
alias exp='explorer.exe'

# to exit a window using Vim bindings
alias :q="exit"

# to open the vision board
alias vis='cd /mnt/c/Users/joshu/Dropbox/anteckningsbok/goals/ && explorer.exe visionBoard2020.jpg'

# to open photos & copy them to the clipboad
alias mon='explorer.exe $(date +%Y%m%d -d "-1 month")*; echo $(date +%Y%m%d -d "-1 month")* | clip.exe'
alias wee='explorer.exe $(date +%Y%m%d -d "-7 days")*; echo $(date +%Y%m%d -d "-7 days")* | clip.exe'
alias yea='explorer.exe $(date +%Y%m%d -d "-1 year")*; echo $(date +%Y%m%d -d "-1 year")* | clip.exe'
alias 2ye='explorer.exe $(date +%Y%m%d -d "-2 year")*; echo $(date +%Y%m%d -d "-2 year")* | clip.exe'

# to cat files
alias cgo='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/goals/2020Goals.md'
alias cin='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/inbox.md'
alias cmo='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/general/morningRoutinesChecklist.md'
alias cpr='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/projects.md'
alias cso='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/someday.md'
alias cto='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/toDo.md'
alias cwa='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/waitingFor.md'
alias sch='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/general/schedule.md'
alias wor='cat /mnt/c/Users/joshu/Dropbox/anteckningsbok/general/workoutSchedule.md'

# to cat ideas from 1 week, 1 month & 1 year
alias 1m='cat $(date +%Y%m%d -d "-1 month")*'
alias 1w='cat $(date +%Y%m%d -d "-7 days")*'
alias 1y='cat $(date +%Y%m%d -d "-1 year")*'
alias 2y='cat $(date +%Y%m%d -d "-2 year")*'

# to create a new journal and idea file
alias vjo='cd /mnt/c/Users/joshu/Documents/journal && new'
alias vid='cd /mnt/c/Users/joshu/Dropbox/anteckningsbok/ideas && new'

# to edit files
alias ali='vim ~/.bash_aliases'
alias end='vim -S /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/gtd.vim'
alias vba='vim ~/.bashrc'
alias vgo='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/goals/2020Goals.md'
alias vin='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/inbox.md'
alias vpr='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/projects.md'
alias vso='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/someday.md'
alias vto='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/toDo.md'
alias vvi='vim ~/.vimrc'
alias vwa='vim /mnt/c/Users/joshu/Dropbox/anteckningsbok/todo/waitingFor.md'

# Bitwarden shortcuts
alias thunder='bw get password thunderbird | clip'
