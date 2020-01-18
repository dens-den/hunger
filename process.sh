#!/usr/bin/env bash

DRAFT=draft.txt
HU=hu.txt
DE=de.txt
OUTPUT=content/posts/$(ls -t content/posts/ | head -n 1)

HUTEXT=$(awk -v RS= 'NR==1{print}' $DRAFT)
DETEXT=$(awk -v RS= 'NR==2{print}' $DRAFT)
echo "$HUTEXT" | sed 's/^..//' | perl -pe 's/([!?.]) /\1\n/g' > $HU
echo "$DETEXT" | sed 's/^..//' | perl -pe 's/([!?.]) /\1\n/g' > $DE

while IFS= read -r phrase_hu
do
  phrase_de="$(head -n 1 $DE)"
  printf "<span class=\"hu\">$phrase_hu</span><br />\n" >> $OUTPUT
  printf "<span class=\"de\">$phrase_de</span><br />\n" >> $OUTPUT
  printf "<br />\n" >> $OUTPUT
  tail -n +2 $DE > $DE.tmp && mv $DE.tmp $DE
done < $HU

tail -r $OUTPUT | tail -n +2 | tail -r | tee $OUTPUT > $OUTPUT.tmp && mv $OUTPUT.tmp $OUTPUT

printf "\n---" >> $OUTPUT

printf "\n\n<h3 class=\"hu-big\">Szöveg magyarul:</h3>\n\n" >> $OUTPUT
echo "$HUTEXT" | sed -e 's/$/  /' | tee >> $OUTPUT

printf "\n<h3 class=\"de-big\">Text in Deutsch:</h3>\n\n" >> $OUTPUT
echo "$DETEXT" | sed -e 's/$/  /' | tee >> $OUTPUT

rm $HU $DE
