function bgba --description './bbgit branch -a -v'
    if test -e bbgit
        command ./bbgit branch -a -v
    else 
        command gba
    end
end