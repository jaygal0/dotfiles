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
alias vis='cd /mnt/c/Users/josh/Dropbox/anteckningsbok/goals/ && explorer.exe visionBoard2021.jpg'

# to open files according to the date
alias mon='explorer.exe $(date +%Y%m%d -d "-1 month")*; echo $(date +%Y%m%d -d "-1 month")*' 
alias wee='explorer.exe $(date +%Y%m%d -d "-7 days")*; echo $(date +%Y%m%d -d "-7 days")*'
alias yea='explorer.exe $(date +%Y%m%d -d "-1 year")*; echo $(date +%Y%m%d -d "-1 year")*'
alias 2ye='explorer.exe $(date +%Y%m%d -d "-2 year")*; echo $(date +%Y%m%d -d "-2 year")*'
alias 3ye='explorer.exe $(date +%Y%m%d -d "-3 year")*; echo $(date +%Y%m%d -d "-3 year")*'
alias 4ye='explorer.exe $(date +%Y%m%d -d "-4 year")*; echo $(date +%Y%m%d -d "-4 year")*'
alias 5ye='explorer.exe $(date +%Y%m%d -d "-5 year")*; echo $(date +%Y%m%d -d "-5 year")*'

# to cat files
alias cgo='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/goals/2021Goals.md'
alias cin='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/inbox.md'
alias cmo='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/general/morningRoutinesChecklist.md'
alias cpr='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/projects.md'
alias cso='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/someday.md'
alias cto='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/toDo.md'
alias cwa='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/waitingFor.md'
alias sch='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/general/schedule.md'
alias wor='cat /mnt/c/Users/josh/Dropbox/anteckningsbok/workouts/workoutSchedule.md'

# to view photos and journals according to their dates
alias 1wj='cd ../img; explorer.exe $(date +%Y%m%d -d "-7 days")*; echo $(date +%Y%m%d -d "-7 days")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-7 days")* -c "Goyo"'
alias 1mj='cd ../img; explorer.exe $(date +%Y%m%d -d "-1 month")*; echo $(date +%Y%m%d -d "-1 month")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-1 month")* -c "Goyo"'
alias 1yj='cd ../img; explorer.exe $(date +%Y%m%d -d "-1 year")*; echo $(date +%Y%m%d -d "-1 year")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-1 year")* -c "Goyo"'
alias 2yj='cd ../img; explorer.exe $(date +%Y%m%d -d "-2 year")*; echo $(date +%Y%m%d -d "-2 year")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-2 year")* -c "Goyo"'
alias 3yj='cd ../img; explorer.exe $(date +%Y%m%d -d "-3 year")*; echo $(date +%Y%m%d -d "-3 year")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-3 year")* -c "Goyo"'
alias 4yj='cd ../img; explorer.exe $(date +%Y%m%d -d "-4 year")*; echo $(date +%Y%m%d -d "-4 year")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-4 year")* -c "Goyo"'
alias 5yj='cd ../img; explorer.exe $(date +%Y%m%d -d "-5 year")*; echo $(date +%Y%m%d -d "-5 year")* | clip.exe; cd ../journal; vim $(date +%Y%m%d -d "-5 year")* -c "Goyo"'

# to cat ideas from 1 week, 1 month & 1 year
alias 1wi='cat $(date +%Y%m%d -d "-7 days")*'
alias 1mi='cat $(date +%Y%m%d -d "-1 month")*'
alias 1yi='cat $(date +%Y%m%d -d "-1 year")*'
alias 2yi='cat $(date +%Y%m%d -d "-2 year")*'
alias 3yi='cat $(date +%Y%m%d -d "-3 year")*'
alias 4yi='cat $(date +%Y%m%d -d "-4 year")*'
alias 5yi='cat $(date +%Y%m%d -d "-5 year")*'

# to access the password, decrypt and create a new journal file
alias vjo='bw get password dagbok | clip && ~/journal-decrypt.sh && cd /mnt/c/Users/josh/Documents/dagbok/journal && new'

# to decrypt & encrypt the journal folder
alias ejo='~/journal-encrypt.sh'
alias djo='bw get password dagbok | clip && ~/journal-decrypt.sh'
alias cej='cd .. && ~/journal-encrypt.sh'

# to create a new idea file
alias vid='~/ideas-decrypt.sh && cd /mnt/c/Users/josh/Documents/dagbok/ideas && new'

# to decrypt & encrypt the ideas folder
alias eid='~/ideas-encrypt.sh'
alias did='bw get password dagbok | clip && ~/ideas-decrypt.sh'
alias cei='cd .. && ~/ideas-encrypt.sh'

# to edit files
alias ali='vim ~/.bash_aliases'
alias end='vim -S /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/gtd.vim'
alias vba='vim ~/.bashrc'
alias vgo='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/goals/2021Goals.md'
alias vin='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/inbox.md'
alias vpr='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/projects.md'
alias vso='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/someday.md'
alias vto='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/toDo.md'
alias vvi='vim ~/.vimrc'
alias vwa='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/todo/waitingFor.md'

# Bitwarden shortcuts
alias thunder='bw get password thunderbird | clip'
alias netflix='bw get username d30f628c-231b-486e-9137-aba700f949c7 | clip && bw get password d30f628c-231b-486e-9137-aba700f949c7 | clip'

# Scripts
alias compress='~/compress.sh'
alias transfer='~/transfer.sh'
alias backup='~/backup.sh'

# To access Workout static hold document
alias sta='vim /mnt/c/Users/josh/Dropbox/anteckningsbok/workouts/staticHoldsJournal.md'

# To access jobApplicationList.md quickly
alias job='vim /mnt/c/Users/josh/Documents/inboxFiles/application/md/jobApplicationList.md'

# Accounts
alias dac='bw get password "personal accounts" | clip && ~/accounts-move-to-documents.sh && ~/accounts-decrypt.sh'
alias eac='~/accounts-encrypt.sh && ~/accounts-move-to-dropbox.sh'
