function download_xcode --description 'download Xcode from developer center'
    set url $argv[1]
    set token $argv[2]
    command aria2c --header "Host: adcdownload.apple.com" --header "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" --header "Upgrade-Insecure-Requests: 1" --header "Cookie: ADCDownloadAuth=$token" --header "User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 10_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0 Mobile/14B72 Safari/602.1" --header "Accept-Language: en-us" -x 16 -s 16 $url -d ~/Downloads
end