# SLU Student Opportunity Pipeline: Predictive Analytics & Strategic Insights

**📌 Project Overview** This project focuses on optimizing the recruitment pipeline for Saint Louis University (SLU) by transforming raw candidate data into a predictive engine. I analyzed over 8,300 records to identify behavioral "triggers" that cause students to drop out (churn) and built a model to forecast successful student allocations with 81.6% accuracy.

**🛠️ Tech Stack**
* **Data Engineering:** PostgreSQL, Python (Pandas), Excel
* **Machine Learning:** Scikit-Learn (Random Forest, Logistic Regression)
* **Visualization:** Google Looker Studio

---

**🚀 The Data Journey**

### 1. Data Cleaning & Feature Engineering
* **Audit:** Reviewed 8,133 initial records, removing 221 corrupted entries with irregular timestamps.
* **Standardization:** Unified naming conventions for institutions and converted time-based fields into functional datetime formats.
* **Imputation:** Filled nearly 3,800 missing values in the "Opportunity Start Date" to retain critical records.
* **Feature Engineering:** Created `Application_Lag` (velocity of engagement) and `Age_at_Application` to uncover hidden behavioral patterns.

### 2. Machine Learning Modeling
I conducted a comparative analysis between **Logistic Regression** and **Random Forest Classification**. While Logistic Regression provided a baseline, the Random Forest model achieved a superior **81.6% accuracy** and a much higher **Recall (77.9%)**.

#### **Model Comparison: Logistic Regression vs. Random Forest**

| Logistic Regression (Baseline) | Random Forest (Final Model) |
| :---: | :---: |
| ![Logistic Regression](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Logistic%20Regression.png) | ![Random Forest](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Random%20Forest.png) |
| *Struggled with non-linear behaviors.* | *High Recall (77.9%) - critical for success.* |

#### **Performance Validation**
The Random Forest model achieved a **0.88 ROC-AUC score**, indicating highly reliable and steady predictive power.

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/ROC%20Curve.png" width="600" />
</p>

---

**💡 Key Strategic Insights**

### 🟢 Recommendation 1: The "Golden Window"
* **The Problem:** Probability of success decays rapidly after the first 24 hours of inactivity.
* **The Data:** Successful candidates exhibit a "High-Velocity" signature, typically applying within Day 0.
* **Action:** Implement an automated SMS/Email nudge for students who have not applied within 12 hours of signup.

| The Golden Window Funnel | Success Rate Vs Application Lag (Days) |
| :---: | :---: |
| ![Funnel Diagram](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Funnel%20Diagram.png) | ![Success Vs Churn](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Success%20rate%20vs%20Application%20Lag.png) |

### 🔵 Recommendation 2: The "Weekend Warrior" Strategy
* **The Discovery:** Contrary to corporate weekday norms, peak success days are Friday and Sunday.
* **Context:** Students complete high-stakes applications when they are free from other commitments.
* **Action:** Shift 30% of support and manual review capacity to a Friday–Sunday schedule.

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Weekend%20warrior.png" width="700" />
</p>

### 🟡 Recommendation 3: The STEM-Internship Fast-Track
* **The Profile:** The "Gold Standard" applicant is aged 21–25, within the STEM Major Cluster, applying for an Internship.
* **The Data:** Internship applicants show a 33% higher retention rate.
* **Action:** Create an "Express Lane" to move these candidates to "Allocated" status within 48 hours.

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Top%2010%20drivers%20of%20Success.png" width="700" />
</p>

---

**📊 Business Impact**
* **15% Projected Increase** in successful allocations through speed optimization.
* **20% Reduction** in manual workload via automated behavioral triggers.
* **Future Plan:** Integrating this model directly into the CRM to provide "Live Success Scores" for every new signup.

---

### 🔗 Live Interactive Dashboard
[**Explore the Strategic Insights Dashboard**](https://lookerstudio.google.com/reporting/36766bbb-f66a-4841-ada3-68f82a456c9a)
