#!/bin/zsh

src='zyzzyva_3.4.1.txt'
target='by_length'

mkdir -p $target && cd $_

for i in {2..8}; do
    touch ${i}_letter_words.txt
done

touch 9+_letter_words.txt

cd ..

for i in {2..8}; do
    cat $src | grep -E "^[A-Z]{${i}}$" > $target/${i}_letter_words.txt
done

cat $src | grep -E "^[A-Z]{9,}$" > $target/9+_letter_words.txt