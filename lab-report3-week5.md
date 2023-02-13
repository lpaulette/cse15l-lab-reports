
## Lab Report 3 - Researching Commands

## **grep**

# grep -c

The grep -c combination  shows a count of the lines that have a word that matches with the String you are looking for. It speciically helps you determne how many times the word appears in a file.\
**Source:** https://www.ibm.com/docs/en/aix/7.2?topic=g-grep-command#grep__row-d3e143928

This code block shows me applying grep -c to look for the string "the" in a text file. The coun comes out to be 68. In the two last commands I stored the results of a normal grep to a text file and then did a word count to verify it was the correct number of lines.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -c the non-fiction/OUP/Abernathy/ch1.txt
68

leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep the non-fiction/OUP/Abernathy/ch1.txt > grep-results.txt

leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ wc grep-results.txt
   68  6884 46232 grep-results.txt
```
In this code block I am applying grep -c to the file I know has the string "Lucayans". And indeed, it appears two times.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -c Lucayans travel_guides/berlitz2/Bahamas-History.txt
2
```


# grep -r
The grep -r command looks for a word in a data structure recursively.\
**Source:** A classmate told me about this combination when studying for the skill demo. Apparently, chatGPT told her about it. 

This code block shows how I used grep -r to figure out what files contained the string "Lucayans".
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -r Lucayans ./
./travel_guides/berlitz2/Bahamas-History.txt:Centuries before the arrival of Columbus, a peaceful Amerindian people who called themselves the Luccucairi had settled in the Bahamas. Originally from South America, they had traveled up through the Caribbean islands, surviving by cultivating modest crops and from what they caught from sea and shore. Nothing in the experience of these gentle people could have prepared them for the arrival of the Pinta, the Niña, and the Santa Maria at San Salvador on 12 October 1492. Columbus believed that he had reached the East Indies and mistakenly called these people Indians. We know them today as the Lucayans. Columbus claimed the island and others in the Bahamas for his royal Spanish patrons, but not finding the gold and other riches he was seeking, he stayed for only two weeks before sailing towards Cuba.
./travel_guides/berlitz2/Bahamas-History.txt:The Spaniards never bothered to settle in the Bahamas, but the number of shipwrecks attest that their galleons frequently passed through the archipelago en route to and from the Caribbean, Florida, Bermuda, and their home ports. On Eleuthera the explorers dug a fresh-water well — at a spot now known as “Spanish Wells” — which was used to replenish the supplies of water on their ships before they began the long journey back to Europe with their cargoes of South American gold. As for the Lucayans, within 25 years all of them, perhaps some 30,000 people, were removed from the Bahamas to work — and die — in Spanish gold mines and on farms and pearl fisheries on Hispaniola (Haiti), Cuba, and elsewhere in the Caribbean.
```
This code block shows how I used grep -r to look for the string "Biology" in the file structure. Here I actually pressed Enter before writing the directory by accident and I discovered that you don't need to include it. It just looks in the working directory.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -r Biology
non-fiction/OUP/Kauffman/ch1.txt:Prolegomenon to a General Biology
non-fiction/OUP/Kauffman/ch1.txt:As long ago as 1971, I had published my own first foray into the origin-of-life problem as a young assistant professor in the Department of Theoretical Biology at the University of Chicago. I had wondered if life must be based on template replicating nucleic acids such as DNA or RNA double helices and found myself doubting that standard assumption. Life, at its core, depends upon autocatalysis, that is, reproduction. Most catalysis in cells is carried out by protein enzymes. Might there be general laws supporting the possibility that systems of catalytic polymers such as proteins might be self-reproducing? Proteins are, as noted, linear sequences of twenty kinds of standard amino acids. Consider, then, a first copy of a protein that has the capacity to catalyze a reaction by which two fragments of a potential second copy of that same protein might be ligated to make the second copy of the whole protein. Such a protein, A, say, thirty-two amino acids long, might act on two fragments, say, fifteen amino acids and seventeen amino acids in length, and ligate the two to make a second copy of the thirty-two amino acid sequence.
non-fiction/OUP/Kauffman/ch8.txt:The Biology
```
# grep -rl

This command combination searches recursively for a specific string in a file structure. It also only shows the name of the files that contain the String once.\
**Source:** https://www.ibm.com/docs/en/aix/7.2?topic=g-grep-command#grep__row-d3e143928

In this code block I looked for the string "Lucayans" in the working directory.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -rl Lucayans ./
./travel_guides/berlitz2/Bahamas-History.txt
```
This code block shows how I used grep -rl to look for the string "Biology" in the file structure.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -rl biology ./
./non-fiction/OUP/Berk/ch1.txt
./non-fiction/OUP/Kauffman/ch1.txt
./non-fiction/OUP/Kauffman/ch10.txt
./non-fiction/OUP/Kauffman/ch3.txt
./non-fiction/OUP/Kauffman/ch6.txt
./non-fiction/OUP/Kauffman/ch7.txt
./non-fiction/OUP/Kauffman/ch8.txt
./non-fiction/OUP/Kauffman/ch9.txt
```

# grep -n
This command combination displays the line number in which the string is in the file.\
**Source:** https://www.ibm.com/docs/en/aix/7.2?topic=g-grep-command#grep__row-d3e143928

In this code block I looked for the string "Lucayans" the text file Bahamas-History.txt.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -n Lucayans travel_guides/berlitz2/Bahamas-History.txt
6:Centuries before the arrival of Columbus, a peaceful Amerindian people who called themselves the Luccucairi had settled in the Bahamas. Originally from South America, they had traveled up through the Caribbean islands, surviving by cultivating modest crops and from what they caught from sea and shore. Nothing in the experience of these gentle people could have prepared them for the arrival of the Pinta, the Niña, and the Santa Maria at San Salvador on 12 October 1492. Columbus believed that he had reached the East Indies and mistakenly called these people Indians. We know them today as the Lucayans. Columbus claimed the island and others in the Bahamas for his royal Spanish patrons, but not finding the gold and other riches he was seeking, he stayed for only two weeks before sailing towards Cuba.
7:The Spaniards never bothered to settle in the Bahamas, but the number of shipwrecks attest that their galleons frequently passed through the archipelago en route to and from the Caribbean, Florida, Bermuda, and their home ports. On Eleuthera the explorers dug a fresh-water well — at a spot now known as “Spanish Wells” — which was used to replenish the supplies of water on their ships before they began the long journey back to Europe with their cargoes of South American gold. As for the Lucayans, within 25 years all of them, perhaps some 30,000 people, were removed from the Bahamas to work — and die — in Spanish gold mines and on farms and pearl fisheries on Hispaniola (Haiti), Cuba, and elsewhere in the Caribbean.
```
This code block shows how I used grep -n to look for the string "Biology" in the text file ch1.txt.
```
leezz@Lisa MINGW64 ~/OneDrive/Documents/UCSD/WI23/docsearch/written_2 (main)
$ grep -n biology ./non-fiction/OUP/Berk/ch1.txt
123:Look closely at these ideas—that children are aected by interwoven factors in biology, everyday contexts, and culture—and you will see that contemporary researchers are no longer one-sided in how they view the power of the child versus the adult, or heredity versus environment. Most have turned away from asking which inﬂuence is more important to uncovering how nature and nurture work together to aect the child’s traits and capacities.
131:How does early experience join with biology to aect brain development? The cerebral cortex, seat of human intelligence, undergoes dramatic growth during the ﬁrst few years. Almost all its neurons—cells that store and transmit information—are in place by the second trimester of pregnancy. Once established, neurons begin to take on unique functions by sending out branching ﬁbers, which form elaborate connections with other neurons. Formation of this complex communication system contributes to an enormous increase in size of the brain—from nearly 30 percent of its adult weight at birth to 70 percent by age 2 and 90 percent by age 6.57
```
