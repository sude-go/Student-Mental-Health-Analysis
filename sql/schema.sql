CREATE TABLE student_mental_health (
    student_id SERIAL PRIMARY KEY,            -- Auto-incremented ID
    age VARCHAR(20),                          -- e.g., '18-22'
    gender VARCHAR(10),                       -- 'Male', 'Female', etc.
    university TEXT,                          -- University name
    department TEXT,                          -- Department or field of study
    academic_year VARCHAR(30),                -- e.g., 'First Year or Equivalent'
    cgpa_range VARCHAR(15),                   -- e.g., '3.00 - 3.39'

    stress_score INT,                         -- Composite score from stress-related questions
    anxiety_score INT,                        -- Composite score from anxiety-related questions

    depression_score INT,                     -- Numeric depression score
    depression_label VARCHAR(50)              -- Diagnostic label (e.g., 'Moderate Depression')
);
