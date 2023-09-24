#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from itertools import product

#get params from command line
letters_input = sys.argv[1]
min_range = int(sys.argv[2])
max_range = int(sys.argv[3])

def allwords(chars, length):
    for letters in product(chars, repeat=length):
        yield ''.join(letters)

def main():
    letters = letters_input or 'abcdefghijklmnopqrstuvwxyz'
    for wordlen in range(min_range, max_range):
        for word in allwords(letters, wordlen):
            print(word)

if __name__=="__main__":
    main()

