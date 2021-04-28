# Defined interactively
function format_all --description 'Format all swift files with Swiftformat'
find . -name '*.swift' -exec swiftformat --swiftversion 5.3 {} \;
end
