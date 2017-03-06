Using n-gram library for R to construct syllabic networks.
// cannot handle the entire vocabulary of words at once. Decompose one word at a time and extract //n-grams and associated data manually (for now).
library(ngram)
// load package into environment. Use the word "watch" as an example.
str <- "watch"
x = nchar(str)
str = trimws(gsub(""," ",str)
// output is "w a t c h"
//
ng <- ngram(str)
// creates a formal class called "ng". Will do this recursively for all n from 2 to x-1, as we 
// already know n-grams for n=1 and n=x.
get.ngrams(ng)
// every forward combination of size 2 (default value): "t c" "w a" "a t" "c h"
get.phrasetable(ng)
//     ngrams  freq   prop
// 1   t c     1      0.25
// 2   w a     1      0.25
// 3   a t     1      0.25
// 4   c h     1      0.25
//
n3g <- ngram(str,n=3)
get.ngrams(n3g)
// every forward combination of size 3: "t c h" "w a t" "a t c"
get.phrasetable(n3g)
//    ngrams    freq      prop
//1   t c h     1         0.3333333
//2   w a t     1         0.3333333
//3   a t c     1         0.3333333
//
n4g <- ngram(str,n=4)
get.ngrams(n4g)
// every forward combination of size 4: "w a t c" "a t c h"
get.phrasetable(n4g)
//   ngrams       freq     prop
//1  w a t c      1        0.5
//2  a t c h      1        0.5
//
babble(ng, genlen=3, seed=getseed())
// finds a random segment from "watch" of length 3. Run this three times.
// "atc"
// "wat"
// "chw"
babble(ng, genlen=35, seed=getseed())
// find a 
// "tchtchwatchtchwatchatchwatchchwatch"
// "chtchtchtchatchatchwatchwatchtchtch"
// "chatchwatchwatchtchtchwatchwatchtch"