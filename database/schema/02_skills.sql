/*
=========================================================
Table Name : skills

Purpose :
Stores master skill catalog used across
job descriptions and candidate profiles.

Examples :
- Java
- Python
- SQL
- React
- Machine Learning

Referenced By :
- jd_skills
- candidate_skills
- analysis_matched_skills
- analysis_missing_skills

Primary Key :
- skill_id
=========================================================
*/

CREATE TABLE skills (
    skill_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    skill_name VARCHAR(100) NOT NULL,

    category VARCHAR(100),

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP
);