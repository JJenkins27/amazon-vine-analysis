# Amazon Vine Analysis

Using AWS, P3, PySpark and PostgreSQL to analyze reviews

## Overview of Project

Reviews downloaded from AWS related to books. Results published into PostgreSQL using PySpark and AWS. Continued analysis using PostgreSQL.

### Purpose

Analyzing Amazon reviews written by members of the Amazon Vine program. Companies will pay a small fee to Amazon, then provide products to Amazon Vine members, who are then required to publish a review. This analysis is to determine if there is a favorable bias for those reviewers who are Amazon Vine members. It will analyze 5-star reviews for those in the program and those who are not, to see if such a bias exists.

## Results

#### *Paid Vine Reviews*

- There are X total Vine reviews.
- Of these X reviews, X of them have a 5-star rating.
- The percentage of 5-star reviews is: _50%_.

#### *Unpaid non-Vine Reviews*

- There are X total reviews not related to the Vine program.
- Of these X reviews, X of them have a 5-star rating.
- **The percentage of 5-star reviews is: _50%_.**

## Summary

From the 

### Further Analysis

- To continue to analyze this dataset, I would recommend catalouging the reviews past just 5-star ratings. Will Amazon Vine members give an unfavorable review? Which percentage of the reviews by Amazon Vine members are rated 1-star or 2-star? 
- Additionally, it would be interesting to run NLP (specifically, word count and word analysis) on reviews. Do Amazon Vine members post longer, more detailed reviews than those not in the Amazon Vine program?



