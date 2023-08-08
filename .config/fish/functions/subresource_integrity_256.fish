function subresource_integrity_256 --description 'Generating SRI hashes with sha-256'
  if string match -q -r 'https?://.*' $argv[1]
    set filename (basename $argv[1])
    set file "/tmp/$filename"
    curl --output-dir "/tmp" -LO $argv[1]
  else
    set file $argv[1]
  end
  set value (shasum -b -a 256 $file | awk '{ print $1 }' | xxd -r -p | base64)
  echo 'sha256-'$value
end
