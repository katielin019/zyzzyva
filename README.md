# zyzzyva

This repo contains several segmented word lists based on a variety of characteristics (e.g. length), along with the script(s) I wrote to generate these word lists. 

The source for these segmented word lists comes from the North American Scrabble Players Association, or NASPA. As of February 29, 2024, the official lexicon governing competitive Scrabble play in the US and Canada is the [NASPA Word List, 2023 Edition](https://www.scrabbleplayers.org/w/NWL2023).

I obtained the word list in its entirety via [Zyzzyva](https://www.scrabbleplayers.org/w/NASPA_Zyzzyva:_The_Last_Word_in_Word_Study), a word study and word adjudication program maintained by NASPA.

The original word list contains 196,601 words. I like creating tools that analyze, rearrange, and manipulate words, and I wanted to be able to easily filter words by certain properties so that the data structures I use to search for words aren't quite as bulky.

For comparison, since I've already split the 196,601 words into separate files based on their lengths, the following table contains the number of words in each group:

| Word length | Number of words |
| ----------- | --------------- |
| 2 letters   | 107 words       |
| 3 letters   | 1,085 words     |
| 4 letters   | 4,247 words     |
| 5 letters   | 9,476 words     |
| 6 letters   | 16,706 words    |
| 7 letters   | 25,473 words    |
| 8 letters   | 31,736 words    |
| 9+ letters  | 107,771 words   |

</br>
Of course, I could always do this filtering each time I receive a new word to process, but I prefer to have some of the sorting and grouping done in advance, since it allows me to narrow my search even further and reduce the computational complexity of my program as much as possible.