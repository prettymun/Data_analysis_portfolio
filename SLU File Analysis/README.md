# SLU Student Opportunity Pipeline: Predictive Analytics & Strategic Insights

[cite_start]**📌 Project Overview** This project focuses on optimizing the recruitment pipeline for Saint Louis University (SLU) by transforming raw candidate data into a predictive engine[cite: 3]. [cite_start]I analyzed over 8,300 records to identify behavioral "triggers" that cause students to drop out (churn) and built a model to forecast successful student allocations with 81.6% accuracy[cite: 5, 6, 23].

**🛠️ Tech Stack**
* [cite_start]**Data Engineering:** PostgreSQL, Python (Pandas), Excel [cite: 34]
* [cite_start]**Machine Learning:** Scikit-Learn (Random Forest, Logistic Regression) [cite: 31]
* [cite_start]**Visualization:** Google Looker Studio [cite: 34]

---

**🚀 The Data Journey**

### 1. Data Cleaning & Feature Engineering
* [cite_start]**Audit:** Reviewed 8,133 initial records, removing 221 corrupted entries with irregular timestamps[cite: 11, 23].
* [cite_start]**Standardization:** Unified naming conventions for institutions and converted time-based fields into functional datetime formats[cite: 12, 13].
* [cite_start]**Imputation:** Filled nearly 3,800 missing values in the "Opportunity Start Date" to retain critical records[cite: 14].
* [cite_start]**Feature Engineering:** Created `Application_Lag` (velocity of engagement) and `Age_at_Application` to uncover hidden behavioral patterns[cite: 15].

### 2. Machine Learning Modeling
[cite_start]I conducted a comparative analysis between **Logistic Regression** and **Random Forest Classification**[cite: 31]. [cite_start]While Logistic Regression provided a baseline, the Random Forest model achieved a superior **81.6% accuracy** and a much higher **Recall (77.9%)**[cite: 31].

#### **Model Comparison: Logistic Regression vs. Random Forest**

| Logistic Regression (Baseline) | Random Forest (Final Model) |
| :---: | :---: |
| ![Logistic Regression](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Logistic%20Regression.png) | ![Random Forest](https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Random%20Forest.png) |
| *Struggled with non-linear behaviors.* | *High Recall (77.9%) - critical for success.* |

#### **Performance Validation**
[cite_start]The Random Forest model achieved a **0.88 ROC-AUC score**, indicating highly reliable and steady predictive power[cite: 57].

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/ROC%20Curve.png" width="600" />
</p>

---

**💡 Key Strategic Insights**

### 🟢 Recommendation 1: The "Golden Window"
* [cite_start]**The Problem:** Probability of success decays rapidly after the first 24 hours of inactivity[cite: 40].
* [cite_start]**The Data:** Successful candidates exhibit a "High-Velocity" signature, typically applying within Day 0[cite: 41].
* [cite_start]**Action:** Implement an automated SMS/Email nudge for students who have not applied within 12 hours of signup[cite: 42].

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Funnel.png" width="500" />
</p>

### 🔵 Recommendation 2: The "Weekend Warrior" Strategy
* [cite_start]**The Discovery:** Contrary to corporate weekday norms, peak success days are Friday and Sunday[cite: 44].
* [cite_start]**Context:** Students complete high-stakes applications when they are free from other commitments[cite: 45].
* [cite_start]**Action:** Shift 30% of support and manual review capacity to a Friday–Sunday schedule[cite: 46].

### 🟡 Recommendation 3: The STEM-Internship Fast-Track
* [cite_start]**The Profile:** The "Gold Standard" applicant is aged 21–25, within the STEM Major Cluster, applying for an Internship[cite: 48].
* [cite_start]**The Data:** Internship applicants show a 33% higher retention rate[cite: 37].
* [cite_start]**Action:** Create an "Express Lane" to move these candidates to "Allocated" status within 48 hours[cite: 50].

<p align="center">
  <img src="https://raw.githubusercontent.com/prettymun/Data_analysis_portfolio/main/SLU%20File%20Analysis/Top%2010%20drivers%20of%20Success.png" width="700" />
</p>

---

**📊 Business Impact**
* [cite_start]**15% Projected Increase** in successful allocations through speed optimization[cite: 53].
* [cite_start]**20% Reduction** in manual workload via automated behavioral triggers[cite: 54].
* [cite_start]**Future Plan:** Integrating this model directly into the CRM to provide "Live Success Scores" for every new signup[cite: 56].

---

### 🔗 Live Interactive Dashboard
[**Explore the Strategic Insights Dashboard**](https://lookerstudio.google.com/reporting/36766bbb-f66a-4841-ada3-68f82a456c9a)
