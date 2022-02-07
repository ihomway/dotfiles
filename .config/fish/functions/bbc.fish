function bbc --description 'Create new branch under loktar and mtc'
set dir (pwd)
cd $loktar
git checkout -b $argv[1] --no-track $argv[2]
cd $mtc
git checkout -b $argv[1] --no-track $argv[2]
cd $dir
end
