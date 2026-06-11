/*
=========================================================
Table Name : job_descriptions

Purpose :
Stores recruiter-created job openings.

Used For :
- Candidate Applications
- Resume Screening
- AI Matching

Referenced By :
- jd_skills
- applications
- ai_analysis

Primary Key :
- jd_id

Foreign Keys :
- recruiter_id -> users.user_id
=========================================================
*/

CREATE TABLE job_descriptions (
    jd_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    recruiter_id UUID NOT NULL,

    title VARCHAR(255) NOT NULL,

    description TEXT NOT NULL,

    experience_required INTEGER,

    education_required VARCHAR(255),

    status VARCHAR(20)
        DEFAULT 'ACTIVE',

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP
);