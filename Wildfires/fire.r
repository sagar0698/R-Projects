library(tidyverse)
library(tidytext)
library(stringr)
library(wordcloud)

mydata <- read_csv("research.csv")
my_word_counts <- mydata %>% select(text) %>% unnest_tokens(input=text, output="word") %>% group_by(word) %>% summarise(wordcount=n()) %>% arrange(desc(wordcount)) %>% anti_join(stop_words)
view(my_word_counts)
