curl https://www.ecu.edu.au/degrees/study-areas/science > index.html

#grep -E '<h>|</h1>' index.html | sed "s/<h1>//;s/<\/h1>//"

awk '/largeLinkTile studySection studySection--short studySection--mushroomLight/,/<!-- Download guides -->/' index.html | grep href | cut -d "<" -f2 | cut -d ">" -f2
