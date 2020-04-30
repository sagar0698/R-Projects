# -*- coding: utf-8 -*-
"""
Created on Sun Apr 26 03:40:22 2020

@author: spj06
"""

from twitterscraper import query_tweets
import datetime as dt 
import pandas as pd 


begin_date = dt.date(2019,1,1)
end_date = dt.date(2020,4,26)


limit = 1000
lang = 'english'


tweets = query_tweets('#wildfire AND #forestfire', begindate = begin_date, enddate = end_date, limit = limit, lang = lang)
df = pd.DataFrame(t.__dict__ for t in tweets)
df.to_csv('research.csv')
