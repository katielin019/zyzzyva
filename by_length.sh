#!/bin/zsh

src='zyzzyva_3.4.1.txt'

for i in {2..8}; do
    touch ${i}_letter_words.txt
done

touch 9+_letter_words.txt

for i in {2..8} do
    grep -E "^[A-Z]{${i}}$" $src > ${i}_letter_words.txt
done

grep -E "^[A-Z]{9,}$" $src > 9+_letter_words.txt