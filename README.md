# Binary classification with Logistic regression
by Ümmühan Demir November 2021

#### **We want to be able to predict which films will be rented next month using Sakila database.** :popcorn: :clapper: :movie_camera:
![What is this](images/renting_movies.jpeg)

### Table of Contents  
[Data Question & Methodology](#data-question)

[Next Steps](#next-steps)

[Useful Links](#Headers)
<a name="headers"/>


## Data Question & Methodology
This week we are working on the Sakila database mainly to answer the question: which films will be rented next month? The answer of this question would be binary, either 1(yes, it will be rented) or 0(no, sorry out of trends). To get that end logistic regression will be used. 
 My methodology to approach this question is as following so far(will be updated when next steps are processed one by one):
* First, I tried to query the most relevant data out of Sakila on **MySql workbench**. 
* Next, to work on that data I connect **Python** and **Sql** by using **pymysql** and **sqlalchemy** libraries and run the query I ended up with.
* After creating dataframe, to gain deeper insight into it I did some explorations, and plottings of correlation matrix. The last one is particularly important for us as it is a signal of multicollinearity.
* I applied some preprocessing on numerical columns to make them a bit more 'normal'. The following plots show numerical columns just to give some idea before preprocessing, after Normalizer() applied and after StandardScaler() applied, respectively. You can find the code for these in the link below.)
 <p float="left">
  <img src="/images/before.png" width="250"  />
  <img src="/images/Normalizer.png" width="250" /> 
  <img src="/images/standard.png" width="250" />
</p>

* Next I created the target column by querying whether the film is rented last month or not. This can be done on **mySql workbench** or by defining a function in **Python**.
* After concatanating the now-all-numerical columns, I applied logistic regression to that data.
* Then I divided the data into train and test like 70-30 percentages. 
* After I get 79% accuracy score for that model, because it is too good for a made-up limited data, I suspected about data imbalance. 
* Examining confusion matrix showed me that actually my model didn't do any good job for predicting.
* To deal with this problem, some sampling methods were applied.

## Next Steps
* Combination of sampling methods will be applied.
* The steps above will be applied for a different combination of columns. 


## Useful Links & Notes
* I added [the sakila-db](https://github.com/UmmuDem/Making_Predictions_Sakila/tree/main/sakila-db) for whom want to dive into it.
* This [link](https://github.com/UmmuDem/Making_Predictions_Sakila/blob/main/related_lab_questions.md) can be used to see the lab questions as a guideline for our purpose.
* [This](https://github.com/UmmuDem/Making_Predictions_Sakila/blob/main/Lab%20%7C%20Making%20predictions%20with%20logistic%20regression.ipynb) is my jupyter notebook for detailed explanations and the code itself.



