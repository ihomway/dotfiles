function bgst --description './bbgit status'
    if test -e bbgit
        command ./bbgit status
    else 
        command gst
    end
end