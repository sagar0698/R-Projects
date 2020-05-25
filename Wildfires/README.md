**Introduction:**
In this miniature report, we will be discussing how often wildfires are tweeted either with or without an ongoing wildfire occurrence on the news. Many of these tweets will refer to the Australian wildfires that occurred late last year. 
Dataset:
Our dataset includes a total of 681 tweets from January 1st 2019 - May 6th 2020. The file includes:
Tweets
Timestamps
Username + screen name (real name)
Hashtags
Likes, retweets, replies
Search words used were:
#forestfire 
 #wildfire

**Approach:**
We first use Python and Twitter API to create the csv file. Next, we loaded our dataset into R and began with sentiment analysis. Then, we created columns containing the tweets and the next column containing word frequency on how often a certain word is used. After that, we compared the amount of positive and negative keywords there are within each line of text and print out their difference.


**Results**
![Rplot](https://user-images.githubusercontent.com/55200206/82846704-063ef780-9e9f-11ea-814b-4eaeb39ee4c8.png)
Note: Most frequently occuring words, including keywords: forestfire and wildfires

**Conclusions:**
As we can see from our dataset, most of the tweets regarding wildfires during mid-2019 to early 2020 are of negative connotation. However, what’s interesting is that there is only a 12% difference between negative and positive tweets, with 98(56%) negative tweets and 78(44%) positive tweets. The total sentiment score was -15.

This could be through various reasons. Some examples include applauding the firefighters who risked their lives combating the forest fires. Others could be donations to charities involved during this time of crisis. Finally, some were prayers aimed towards people affected by the fires.
