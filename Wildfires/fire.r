##########################################
## Sustainability Project: Forest Fires                   
##          Group:                                                       
##           Sagar Joshi                                                 
##           Marrion-Yna Macandog                            
##           Ryan Mauricio                                        
##########################################

# Load Libraries
library(tidyverse)
library(tidytext)
library(stopwords)
library(wordcloud)

# Load CSV File
forestFireData <- read_csv("research.csv")

# Make it into tidytext format with only tweet column
myForestFireData <- forestFireData %>% select(text) %>% unnest_tokens(input=text,output="word") %>% anti_join(stop_words) %>% group_by(word) %>% summarise(wordcount=n()) %>% arrange(desc(wordcount))
ffData <- myForestFireData[-c(1,2,4,6,7,8,11,12,13,14,16,26,31),] # Removes website urls from the list



# Run sentiment analysis
sentimentData <- ffData %>% inner_join(sentiments) %>% count(lineno=1:176, sentiment) %>% spread(key=sentiment, value=n, fill=0) %>% mutate(sentiment=positive-negative) %>% select(lineno, sentiment)
sentimentData %>% filter(sentiment < 0) %>% summarise(wordcount = n())
sentimentData %>% filter(sentiment > 0) %>% summarise(wordcount =)

#Total sentiment count only; no positive or negative columns
totalSent <- forestFireData %>% unnest_tokens(input="text", output="word") %>% inner_join(sentiments) %>% count(lineno=1:739, sentiment) %>% spread(key=sentiment, value=n, fill=0) %>% mutate(sentiment=positive-negative) %>% select(lineno, sentiment)

#Sentiment score
sum(totalSent$sentiment)

# View Data
View(ffData)

# Graph Data
ggplot(data=ffData %>% filter(wordcount >= 49)) +geom_col(aes(word,wordcount)) + coord_flip()
