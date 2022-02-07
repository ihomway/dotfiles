function netflix_unlock --description 'Test if netflix is unlocked'
set ua '--output /dev/null --max-time 10 "https://www.netflix.com/title/81215567" 2>&1'
set url 'https://www.netflix.com/title/81215567'
echo "Test Starts..."
set result (curl -4 --user-agent $ua -fsL --write-out %{http_code} --output /dev/null --max-time 10 $url 2>&1)
if test "$result" = "404"
echo "Originals Only"
else if test "$result" = "403"
echo "Not Available"
else if test "$result" = "200"
echo "Passed"
else
echo "Failed"
end
end
