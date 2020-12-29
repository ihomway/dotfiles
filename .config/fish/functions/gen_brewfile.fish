function gen_brewfile --description 'generate the .Brewfile'
command brew bundle dump -g -f
end
