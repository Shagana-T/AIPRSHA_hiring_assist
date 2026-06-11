/*
=========================================================
Table Name : candidate_skills

Purpose :
Stores skills possessed by candidates.

Used For :
- Resume Parsing
- Skill Matching
- Candidate Ranking

Relationship :
Many Skills ↔ One Candidate

Primary Key :
- candidate_skill_id

Foreign Keys :
- candidate_id
- skill_id
=========================================================
*/
CREATE TABLE public.candidate_skills (
    candidate_skill_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    candidate_id uuid NOT NULL,
    skill_id uuid NOT NULL,
    proficiency_level character varying(20),
    extracted_by_ai boolean DEFAULT true
);
