# Amazon Vine Analysis

Using AWS, P3, PySpark and PostgreSQL to analyze reviews

## Overview of Project

Reviews downloaded from AWS related to books. Results published into PostgreSQL using PySpark and AWS. Continued analysis using PostgreSQL.

### Purpose

Analyzing Amazon reviews written by members of the Amazon Vine program. Companies will pay a small fee to Amazon, then provide products to Amazon Vine members, who are then required to publish a review. This analysis is to determine if there is a favorable bias for those reviewers who are Amazon Vine members. It will analyze 5-star reviews for those in the program and those who are not, to see if such a bias exists.
The dataset chosen was amazon_reviews_us_Books_v1_00.

## Results

#### *Paid Vine Reviews*

![vine_reviews](https://user-images.githubusercontent.com/108373151/197402487-424c77e3-3b68-4baf-be5e-65524b42d399.jpg)

- There are 5,012 total Vine reviews.
- Of these 5,012 reviews, 2,031 of them have a 5-star rating.
- **The percentage of 5-star reviews is: _40.52%_.**

#### *Unpaid non-Vine Reviews*

![unpaid_reviews](https://user-images.githubusercontent.com/108373151/197402502-bb4aaf42-25d6-46ba-83a1-48ee9fa9bcc6.jpg)

- There are 109,297 total reviews not related to the Vine program.
- Of these 109,297 reviews, 49,967 of them have a 5-star rating.
- **The percentage of 5-star reviews is: _45.72%_.**

## Summary

Approximately 41% of the Vine reviews are rated 5-star. Whereas, in the unpaid reviews, 46% are rated 5-star. Because the number of unpaid 5-star reviews are approximately 13% higher than the 5-star paid reviews, it has been determined that there is no positivity bias in the Amazon Vine program.

### Recommendations

- To continue to analyze this dataset, I would recommend catalouging the reviews past just 5-star ratings. Will Amazon Vine members give an unfavorable review? Which percentage of the reviews by Amazon Vine members are rated 1-star or 2-star? 
- Additionally, it would be interesting to run NLP (specifically, word count and word analysis) on reviews. Do Amazon Vine members post longer, more detailed reviews than those not in the Amazon Vine program?



