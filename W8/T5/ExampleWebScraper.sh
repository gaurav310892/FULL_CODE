wget http://example.com
grep -E '<h>|</h1>' index.html | sed "s/<h1>//;s/<\/h1>//"
grep -E '<p>|</p>' index.html | grep -v href | sed "s/<p>//;s/<\/p>//"
