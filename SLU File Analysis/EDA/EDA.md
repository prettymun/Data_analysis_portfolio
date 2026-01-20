**Exploratory Data Analysis (EDA) Report**

**Project: SLU Opportunity Forecasting**

**INTRODUCTION**

**1.1. Project Overview**
This report presents a comprehensive Exploratory Data Analysis (EDA) of the SLU Opportunity dataset, comprising 8,336 validated learner records. Following the rigorous data audit and structural cleaning performed in Week 1—which addressed corrupted timestamps and standardized institutional identifiers—this phase of the project focuses on uncovering the underlying behavioral drivers and demographic trends within the applicant pool.

**1.2. Problem Statement & Objectives**
This analysis aims to:
- Identify Core Demographics: Determine the primary age groups and academic backgrounds driving application volume.
- Analyze Engagement Trend: Utilize the engineered "Application Lag" feature to measure how quickly learners transition from interest (signup) to action (application).
- Evaluate Success Funnels: Determine which variables (Geography, Major, Opportunity Type) most significantly correlate with a "Team Allocated" status.

**1.3. Business Value**
- The insights extracted from this EDA will serve as the strategic foundation for Week 3’s predictive modeling. By understanding "surge hours" and "high-intent learner profiles," the organization can optimize resource allocation, reduce rejection rates, and refine outreach strategies for future internship and course cohorts.

**Methodology (Data Cleaning)**
- To ensure a good standard of data (accurate, consistent, and valid), the following multi-step cleaning and preparation workflow was executed:

**2.1. Handling Irregularities & Outliers**
- Corrupted Timestamps: Identified and removed 222 records containing unrecoverable system errors, such as "1081320:XX:XX" time formats and future-dated years (2147–2149).

**2.2. Standardization & Imputation**
- Institutional Alignment: Standardized over four variations of "Saint Louis University" (including "SAINT LOUIS" and "Saint Louis University I") into a single uniform name to ensure
  institutional reporting accuracy.
- Missing Value Strategy: * Blanks in Institution Name and Current/Intended Major were imputed with the string "Unknown" to retain the associated application data.
- The Opportunity Start Date containing 3,794 missing values) was labeled as "NULL" to maintain dataset volume while acknowledging the data gap.

**2.3. Data Type Transformation**
- Converted all critical "Object" type columns (e.g., Learner Sign Up Datetime, Apply Date, and Date of Birth) into Proper Datetime formats. This transformation was essential for enabling time-series analysis and calculating time-derived metrics.

**2.4. Feature Engineering**
- To move beyond raw data, two predictive features were engineered to measure applicant behavior:
- Age_at_application: Calculated by subtracting the birth year from the application year.
- Application_Lag (Days): Calculated as the difference between the Signup timestamp and the Application timestamp. This feature serves as a primary proxy for Learner Intent and Velocity.

![FULL EDA REPORT]
(https://drive.google.com/file/d/1IVYCn-oCLTaOWdurMWm38sTr9IHg3fAH/view?usp=drive_link)
