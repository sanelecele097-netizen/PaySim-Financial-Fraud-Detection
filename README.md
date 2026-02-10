# PaySim Financial Fraud Detection

## 1. Motivation & Business Context
Fraud detection protects revenue, reduces customer harm, and prevents operational losses. This project builds an anomaly‑detection system that flags suspicious transactions early so fraud teams can review and act quickly.

## 2. Project Overview
We detect fraud using a multi‑model anomaly approach on the PaySim dataset. The workflow includes:
- Isolation Forest (statistical outliers)
- Autoencoder (reconstruction error)
- DBSCAN (cluster‑based anomalies)
- Risk score engine + alert tiers for business decisions

## 3. Data Source
PaySim Financial Fraud Dataset (synthetic but realistic transaction data). File registered in Azure ML Studio and analyzed in notebooks.

## 4. Procedures Performed
- Workspace + data asset setup in Azure ML Studio
- Compute instance + cluster created
- EDA and feature engineering in notebook
- Anomaly models (Isolation Forest, DBSCAN, Autoencoder)
- Risk scoring + tiering
- Exported `fraud_scored.csv` for Power BI
- Power BI dashboard created

## 5. Project Structure
```
PaySim-Financial-Fraud-Detection/
├── data/
│   ├── PS_20174392719_1491204439457_log.csv
│   ├── PS_20174392719_1491204439457_log.csv.zip
│   └── fraud_scored.csv
├── evidence/
│   └── raw/                # original screenshots (source)
├── models/
│   └── iso_fraud_model.pkl
├── notebooks/
├── reports/
│   ├── figures/
│   │   ├── azureml/         # Azure ML evidence screenshots
│   │   │   └── index.md
│   │   └── powerbi/         # Power BI visuals extracted from report
│   ├── PaySim Dashboard.docx
│   └── PaySim PowerBI Dashboard.pbix
├── src/
│   └── fraud_eda (2).ipynb
├── README.md
└── requirements.txt
```

## 6. Evidence & Artifacts
- Azure ML screenshots: `reports/figures/azureml/`
- Azure ML index: `reports/figures/azureml/index.md`
- Power BI visuals: `reports/figures/powerbi/`
- Power BI file: `reports/PaySim PowerBI Dashboard.pbix`
- Report: `reports/PaySim Dashboard.docx`

## Notes
- Azure ML Designer pipeline used for data prep evidence.
- Model scoring is sample‑based for stability on large data.
