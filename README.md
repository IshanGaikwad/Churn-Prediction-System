# Churn-Prediction-System
Customer churn is the percentage of customers that stopped using a particular company’s product or service during a certain time frame.
To avoid customer churn, companies keep track of the percentage churn and the factors leading to it, so that they can try to minimize the churn by taking preventive measures and by providing better service.
Churn can also be reduced by predicting the percentage churn which will take place as per the previous churn and factors. Churn prediction will help the organization from losing their customers and stock value in market.
In order to predict the churn, I have built a prediction model which will predict and help to reduce the organization’s loss.

## Prediction Models Used
Used random forest for prediction.
Basically any model would help to predict such as KNN, logistic regression and etc.
Choose random forest as it is convenient for me to work on and you can achieve high prediction percentage by using random forest.
Firstly I imported the data set and eliminated the columns which were not necessary for classification.
After removing the unnecessary fields, data is split into two categories training and testing. And after splitting data clean function is used to omit NA values as they are not required for classification.
Prediction model is then built using random forest.
To obtain most skilful and accurate prediction, a machine learning algorithm is tuned.
To discover that hyperparameters of the model are tuned.
The model is tuned using tuneRF function and tuning is performed by splitting the node using mtry function.
mtry splits every tree node. mtry defines the number of variables randomly sampled as candidates at each split.
The attached screen shot shows the results obtained after splitting trees from random forest prediction model.
Initially the accuracy was 79%  then taking the factors of mtry and trees into consideration, accuracy is increased to 97%  after completion of current model.


### Log loss evaluation model

Log Loss takes into account the uncertainty of your prediction based on how much it varies from the actual label. This gives us a more nuanced view into the performance of our model.
In the developed model, churn is considered to be 1 and 0 for Yes and No respectively. And decided the performance of the model by the probability of obtaining class as 1 (Yes).

