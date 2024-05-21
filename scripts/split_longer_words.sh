#!/bin/zsh

src='9+_letter_words.txt'

cd by_length

for i in {9..15}; do
    touch ${i}_letter_words.txt
done

for i in {9..15}; do
    cat $src | grep -E "^[A-Z]{${i}}$" > ${i}_letter_words.txt
done

rm $src