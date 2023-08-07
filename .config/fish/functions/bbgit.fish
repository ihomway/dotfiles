function bbgit --description 'Execution with bbgit if bbgit is existing'
if test -e 'bbgit'
command ./bbgit $argv
else
echo "'bbgit' is NOT existing!"
end
end
