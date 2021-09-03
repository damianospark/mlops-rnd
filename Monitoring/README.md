## Concept drift

In a model, the target variable is what the model is trying to predict. It could be, for example, if a financial transaction is suspected as fraud or not fraud. When the statistical properties of a model change over time in an unexpected way (for example, a new fraud scheme appears that increases the overall amount of fraud), we have concept drift <sup id="a1">[1](#footnote1)</sup>

## Data drift

If, however, the statistical properties of the input features change over time in an unexpected way, it will negatively impact the model’s performance. For example, if users execute many more financial transactions than normal due to it being a holiday period, but the model was not trained to handle holiday periods, then the model performance may degrade (either missing fraud or flagging up too many transactions as suspicious).

## Feature pipeline changes

If there are changes in how a feature is computed in a feature pipeline, and an online model enriches its feature vector with that feature data from the online feature store, then this can negatively impact the model’s performance. For example, if you change how to compute the number of transactions a user carries out, it may negatively impact the model’s performance.

<br/><br/><br/>


### References
---
<b id="footnote1">1</b> : Monitoring https://www.logicalclocks.com/blog/mlops-with-a-feature-store [↩](#a1)