function __bbgit.init
  function __bbgit.create_abbr -d "Create bbgit abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    # TODO: global scope abbr will be default in fish 3.6.0
    abbr -a -g $name $body
  end

  # bbgit abbreviations
  __bbgit.create_abbr bgco       bbgit checkout
  __bbgit.create_abbr bgp        bbgit push
  __bbgit.create_abbr bgl        bbgit pull
  __bbgit.create_abbr bgbD       bbgit branch -D
  __bbgit.create_abbr bgst       bbgit status
  __bbgit.create_abbr bgfa       bbgit fetch --all --prune
  __bbgit.create_abbr bgcm       bbgit commit -m

  # Cleanup declared functions
  functions -e __bbgit.create_abbr
end
