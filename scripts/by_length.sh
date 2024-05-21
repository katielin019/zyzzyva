#!/bin/zsh

src='zyzzyva_3.4.1.txt'
target='by_length'

mkdir -p $target && cd $_

for i in {2..8}; do
    touch ${i}_letter_words.txt
done

touch 9+_letter_words.txt

cd ..

for i in {2..8} do
    grep -E "^[A-Z]{${i}}$" $src > $target/${i}_letter_words.txt
done

grep -E "^[A-Z]{9,}$" $src > $target/9+_letter_words.txt