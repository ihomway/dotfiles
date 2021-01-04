function is_arm_formulae --description 'Check if a giving formulae is arm64 supported'
  brew info $argv --json | grep 'arm64_big_sur' > /dev/null 2> /dev/null
  if test $status -eq 0
    echo "Yes!"
  else
    echo "Not yet!"
  end
end
