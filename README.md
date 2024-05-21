# zyzzyva

This repo contains several segmented word lists based on a variety of characteristics (e.g. length), along with the scripts I wrote to generate these word lists. 

## how to use
I've included the scripts I wrote and used to process the text in the original file. If you want to recreate the steps I took to populate the word lists that split by length of word, you should run `scripts/by_length.sh` first, and then run `scripts/split_longer_words.sh` if you want to split words that have 9+ letters into their respective bins. If you want to just keep a file with all 9+ letter words grouped together, don't run the second script.

I included `scripts/check_count.sh`, even though it doesn't functionally add anything to the text processing pipeline. I wrote it after executing `scripts/split_longer_words.sh` to make sure that all the words from the original source file were accounted for. 15 is the maximum number of letters tht a word can have in Scrabble (the board dimensions are 15x15), but I just wanted to be sure that there weren't any words I missed somehow.


> **Important note:** The way I wrote the scripts assumes that you're running them from the root of this repo, i.e. `zyzzyva`. If you want to run them from inside the `scripts` directory, you'll have to modify the script so that it can locate the source file properly.

## motivation
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
| 9 letters   | 31,229 words    |
| 10 letters  | 25,028 words    |
| 11 letters  | 18,735 words    |
| 12 letters  | 13,515 words    |
| 13 letters  | 9,323 words     |
| 14 letters  | 6,102 words     |
| 15 letters  | 3,839 words     |

</br>
Of course, I could always do this filtering each time I receive a new word to process, but I prefer to have some of the sorting and grouping done in advance, since it allows me to narrow my search even further and reduce the computational complexity of my program as much as possible.

## refs
The source for these segmented word lists comes from the North American Scrabble Players Association, or NASPA. As of February 29, 2024, the official lexicon governing competitive Scrabble play in the US and Canada is the [NASPA Word List, 2023 Edition](https://www.scrabbleplayers.org/w/NWL2023).

I obtained the word list in its entirety via [Zyzzyva](https://www.scrabbleplayers.org/w/NASPA_Zyzzyva:_The_Last_Word_in_Word_Study), a word study and word adjudication program maintained by NASPA.