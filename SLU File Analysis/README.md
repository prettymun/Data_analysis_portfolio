<h1>SLU Student Opportunity Pipeline: Predictive Analytics & Strategic Insights</h1>

**📌 Project Overview**
This project focuses on optimizing the recruitment pipeline for Saint Louis University (SLU) by transforming raw candidate data into a predictive engine. I analyzed over 8,300 records to identify behavioral "triggers" that cause students to drop out (churn) and built a model to forecast successful student allocations with 81.6% accuracy.

**🛠️ Tech Stack**
1. Data Engineering: PostgreSQL, Python (Pandas), Excel
2. Machine Learning: Scikit-Learn (Random Forest, Logistic Regression)
3. Visualization: Google Looker Studio 

**🚀 The Data Journey**
1. Data Cleaning & Feature Engineering
- Audited 8,133 initial records, removing corrupted entries and standardizing institution names.
- Imputed 3,800 missing values in critical date fields to prevent data loss.
- Feature Engineering: Created Application_Lag (velocity of engagement) and Age_at_Application to uncover hidden behavioral patterns.

2. Machine Learning Modeling
- I conducted a comparative analysis between Logistic Regression and Random Forest Classification.
Logistic Regression: Provided a baseline but struggled with non-linear student behaviors.
 
![Logistic Regression Confusion Matrix](https://github.com/prettymun/Data_analysis_portfolio/blob/93bd3e6c5141cee6a1b48ced8d8e29e03d4a2135/SLU%20File%20Analysis/Logistic%20Regression.png)


Random Forest: Selected as the final model due to its "committee of experts" logic. It achieved a 77.9% Recall, which is critical for ensuring high-potential students aren't missed.
 ![Random Forest Confusion Matrix](https://github.com/prettymun/Data_analysis_portfolio/blob/93bd3e6c5141cee6a1b48ced8d8e29e03d4a2135/SLU%20File%20Analysis/Random%20Forest.png)


Model Performance: The Random Forest model achieved a 0.88 ROC-AUC score, indicating highly reliable and steady predictive power.
![ROC](https://github.com/prettymun/Data_analysis_portfolio/blob/93bd3e6c5141cee6a1b48ced8d8e29e03d4a2135/SLU%20File%20Analysis/ROC%20Curve.png)
![Model Performance Comparison](https://github.com/prettymun/Data_analysis_portfolio/blob/main/SLU%20File%20Analysis/Model%20Performance%20Comparison.png)


**💡 Key Strategic Insights**
<h2>Recommendation 1: The "Golden Window"</h2>
**The Problem**: Probability of success decays rapidly after the first 24 hours of inactivity.
**The Data**: Successful candidates exhibit a "High-Velocity" signature, typically applying within Day 0.
**Action**: Implement an automated SMS/Email nudge for students who have not applied within 12 hours of signup.

![Golden Window](https://github.com/prettymun/Data_analysis_portfolio/blob/main/SLU%20File%20Analysis/Funnel.png)

<h2>Recommendation 2: The "Weekend Warrior" Strategy</h2>
**The Discovery:** Contrary to corporate weekday norms, peak success days are Friday and Sunday.
**Context:**Students complete high-stakes applications when they are free from other commitments.
**Action:** Shift 30% of support and manual review capacity to a Friday–Sunday schedule to capitalize on this high-intent window.

<h2>Recommendation 3: The STEM-Internship Fast-Track</h2>
**The Profile**: The "Gold Standard" applicant is aged 21–25, within the STEM Major Cluster, applying for an Internship.
**The Data**: Internship applicants show a 33% higher retention rate.
**Action:** Create an "Express Lane" to move these candidates to "Allocated" status within 48 hours.

![Top 10 drivers of Success](https://github.com/prettymun/Data_analysis_portfolio/blob/main/SLU%20File%20Analysis/Top%2010%20drivers%20of%20Success.png)


**📊 Business Impact**
- 15% Projected Increase in successful allocations through speed optimization.
- 20% Reduction in manual workload via automated behavioral triggers.
- Future Plan: Integrating this model directly into the CRM to provide "Live Success Scores" for every new signup.


🔗 Live Interactive Dashboard
https://lookerstudio.google.com/reporting/36766bbb-f66a-4841-ada3-68f82a456c9a

Explore the Looker Studio Dashboard
