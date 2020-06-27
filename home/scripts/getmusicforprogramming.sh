#
# getmusicforprogramming.sh - get my favorite music. With progress bar!!!
#

curl -sXGET 'https://musicforprogramming.net/rss.php'  | grep "guid"  | sed -E 's/<guid>|<\/guid>//g' |  xargs -n1 curl -L -O -C - --progress-bar -w '%{url_effective}\n'
