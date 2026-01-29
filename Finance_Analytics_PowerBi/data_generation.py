import pandas as pd
import numpy as np
from datetime import datetime, timedelta

# --------------------------
# 1. Dim_Date Table
# --------------------------
# Use 12 months for simplicity (monthly granularity)
dates = pd.date_range(start='2025-01-01', end='2025-12-31', freq='M')

dim_date = pd.DataFrame({
    'DateKey': range(1, len(dates)+1),
    'Date': dates,
    'Month': dates.month,
    'Quarter': dates.quarter,
    'Year': dates.year
})

# --------------------------
# 2. Dim_BusinessUnit Table
# --------------------------
dim_bu = pd.DataFrame({
    'BusinessUnitID': [1, 2, 3],
    'BusinessUnit': ['Mobile Lending', 'Payments', 'Savings'],
    'Region': ['Nairobi', 'Coast', 'Rift Valley']
})

# --------------------------
# 3. Fact_Fintech Table
# --------------------------
np.random.seed(42)

# To ensure >=200 rows, we generate 10–15 customers per business unit per month
fact_fintech = []
customers_per_unit = 8  # 8 customers * 3 BUs * 12 months = 288 rows (>200)

for _, date_row in dim_date.iterrows():
    for _, bu_row in dim_bu.iterrows():
        for cust_id in range(1, customers_per_unit+1):
            active_customers = np.random.randint(1, 10)
            churn_flag = np.random.choice([0, 1])
            transactions = np.random.randint(1, 6)
            revenue = round(transactions * np.random.uniform(10, 50), 2)

            fact_fintech.append({
                'DateKey': date_row['DateKey'],
                'BusinessUnitID': bu_row['BusinessUnitID'],
                'Customer_ID': f"CUST{bu_row['BusinessUnitID']}{cust_id:03d}",
                'Revenue': revenue,
                'Transactions': transactions,
                'Active_Customers': active_customers,
                'Churn_Flag': churn_flag
            })

fact_fintech = pd.DataFrame(fact_fintech)

# --------------------------
# 4. Fact_Operations Table
# --------------------------
departments = ['Finance', 'HR', 'IT', 'Operations', 'Marketing']

# 3 BUs * 5 departments * 12 months = 180 rows, slightly increase to exceed 200
fact_ops = []

for _, date_row in dim_date.iterrows():
    for _, bu_row in dim_bu.iterrows():
        for dept in departments:
            # Randomized cost and budget with slight variation
            operating_cost = round(np.random.uniform(20000, 100000), 2)
            budget = round(operating_cost * np.random.uniform(0.9, 1.1), 2)
            variance = round(operating_cost - budget, 2)

            fact_ops.append({
                'DateKey': date_row['DateKey'],
                'BusinessUnitID': bu_row['BusinessUnitID'],
                'Department': dept,
                'Operating_Cost': operating_cost,
                'Budget': budget,
                'Variance': variance
            })

fact_ops = pd.DataFrame(fact_ops)

# --------------------------
# Export to CSV
# --------------------------
dim_date.to_csv('Dim_Date.csv', index=False)
dim_bu.to_csv('Dim_BusinessUnit.csv', index=False)
fact_fintech.to_csv('Fact_Fintech.csv', index=False)
fact_ops.to_csv('Fact_Operations.csv', index=False)

print("All tables generated with >200 rows and exported successfully!")
