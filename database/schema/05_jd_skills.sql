/*
=========================================================
Table Name : jd_skills

Purpose :
Maps required skills to a job description.

Used For :
- AI Skill Matching
- Resume Screening
- Skill Gap Analysis

Relationship :
Many Skills ↔ One Job Description

Primary Key :
- jd_skill_id

Foreign Keys :
- jd_id
- skill_id
=========================================================
*/
CREATE TABLE public.jd_skills (
    jd_skill_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    jd_id uuid NOT NULL,
    skill_id uuid NOT NULL,
    priority_level integer DEFAULT 3 NOT NULL,
    mandatory_flag boolean DEFAULT true,
    CONSTRAINT chk_priority_level CHECK (((priority_level >= 1) AND (priority_level <= 5)))
);