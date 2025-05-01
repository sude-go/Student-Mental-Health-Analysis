# 🎓 Student Mental Health Analysis using SQL

This project analyzes the mental health status of university students, focusing on academic pressure, emotional
well-being, and demographic influences. SQL is used to extract insights from survey responses, helping identify stress
patterns and potential intervention areas — especially for international students adjusting to new academic
environments.

## 📊 Dataset Overview

Source: [Bangladeshi University Students' Mental Health Dataset](https://figshare.com/articles/dataset/Bangladeshi_University_Students_Mental_Health_Dataset/25347691?file=44874808)

**Key Features:**

- Age, Gender, Department, CGPA
- Academic year and university
- 10+ Likert-scale questions on anxiety, sleep, energy, and mood
- Depression score and diagnostic label

---

## 📁 Folder Structure

- `data/`: Contains the original and cleaned dataset (`raw_data.csv`)
- `sql/`: SQL schema, insert, and query scripts
- `notebooks/`: Python/Colab Jupyter notebook for data cleaning
- `visualizations/`: Charts and plots for data interpretation

---

## 📊 Dataset Processing

This project includes a Jupyter notebook that processes and cleans the raw dataset before importing it into SQL.

### 🔄 File: notebooks/data_cleaning.ipynb
This notebook:
- Loads data/data.csv (raw survey data)
- Cleans and renames columns for SQL compatibility 
- Computes composite stress and anxiety scores based on multiple Likert-scale responses 
- Exports the cleaned result as data/cleaned_data.csv

### 📁 Cleaned Data File
The cleaned dataset (cleaned_data.csv) contains:
- Simplified, SQL-friendly column names 
- Numerical scores for stress, anxiety, and depression 
- Fields required by the SQL schema for analysis

> 📌 You must use **cleaned_data.csv** for database import — not the original file — to avoid type errors.

## 🧱 SQL Database Setup

1. Create the database:
    ```sql
    CREATE DATABASE student_mental_health;
    ```

2. Run the schema:
    ```bash
    psql -d student_mental_health -f Student-Mental-Health-Analysis/schema.Student-Mental-Health-Analysis
    ```

3. Insert data (cleaned or sample):
    ```bash
    psql -d student_mental_health -f Student-Mental-Health-Analysis/insert_sample.Student-Mental-Health-Analysis
    ```

---

## 📈 SQL Analysis Examples

### 1. Average Depression Score by Academic Year

```sql
SELECT academic_year, AVG(depression_score) AS avg_depression
FROM student_mental_health
GROUP BY academic_year
ORDER BY avg_depression DESC;
