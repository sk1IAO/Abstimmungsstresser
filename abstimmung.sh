#!/bin/bash

token=""

vote=32
x=1
till=100
snooze=`shuf -i 2-15 -n 1`
while [ $x -le $till ]
do
  vote=`shuf -i 31-34 -n 1`
  snooze=`shuf -i 2-15 -n 1`
  printf "\n"
  if [ $vote -ge 32 ]
   then
   printf "Hulk\n"
   curl 'https://www.palatin.de/wp-admin/admin-ajax.php' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: de,en-US;q=0.7,en;q=0.3' --compressed -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' -H 'Origin: https://www.palatin.de' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://www.palatin.de/Test-Abstimmung' --data-raw 'action=yop_poll_record_vote&_token='$token'&data=%7B%22pollId%22%3A%224%22%2C%22pollUid%22%3A%228fced5133b89edb4b67fca3cf3496f6d%22%2C%22reCaptcha%22%3A%22%22%2C%22trackingId%22%3A%22%22%2C%22gdprConsent%22%3A%22%22%2C%22data%22%3A%5B%7B%22id%22%3A%2219%22%2C%22type%22%3A%22question%22%2C%22question_type%22%3A%22text%22%2C%22data%22%3A%5B%7B%22id%22%3A%2232%22%2C%22data%22%3Atrue%7D%5D%7D%5D%2C%22user%22%3A%7B%22id%22%3A%22%22%2C%22first_name%22%3A%22%22%2C%22last_name%22%3A%22%22%2C%22email%22%3A%22%22%2C%22type%22%3A%22anonymous%22%2C%22f_data%22%3A%229e9e004de00b32b50fedf875272722ee%22%7D%7D'
  else
   printf "Batman\n"
   curl 'https://www.palatin.de/wp-admin/admin-ajax.php' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: de,en-US;q=0.7,en;q=0.3' --compressed -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' -H 'Origin: https://www.palatin.de' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://www.palatin.de/Test-Abstimmung' -H 'Cookie: ypdt=24161a98db1a0342232e95fb26fa1ce4; ypfp=9e9e004de00b32b50fedf875272722ee' --data-raw 'action=yop_poll_record_vote&_token='$token'&data=%7B%22pollId%22%3A%224%22%2C%22pollUid%22%3A%229382b2b18dc76abf0d9941a80b47c81a%22%2C%22reCaptcha%22%3A%22%22%2C%22trackingId%22%3A%22%22%2C%22gdprConsent%22%3A%22%22%2C%22data%22%3A%5B%7B%22id%22%3A%2219%22%2C%22type%22%3A%22question%22%2C%22question_type%22%3A%22text%22%2C%22data%22%3A%5B%7B%22id%22%3A%2231%22%2C%22data%22%3Atrue%7D%5D%7D%5D%2C%22user%22%3A%7B%22id%22%3A%22%22%2C%22first_name%22%3A%22%22%2C%22last_name%22%3A%22%22%2C%22email%22%3A%22%22%2C%22type%22%3A%22anonymous%22%2C%22f_data%22%3A%229e9e004de00b32b50fedf875272722ee%22%7D%7D'
   fi
  x=$(( $x + 1 ))
  sleep $snooze
done 
