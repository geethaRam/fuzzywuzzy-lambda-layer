# FuzzyWuzzy-lambda-layer

Needs AWS CLI 1.16 or above for SAM

ARN : arn:aws:lambda:us-east-1:287000857748:layer:fuzzywuzzy:1

Usage:

```from fuzzywuzzy import fuzz

def lambda_handler(event, context):
    str1 = "mississauga"
    str2 = "Missisaga"
    Ratio = fuzz.ratio(str1.lower(),str2.lower())
    print(Ratio)
```
