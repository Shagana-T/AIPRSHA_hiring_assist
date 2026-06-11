/*
=========================================================
Table Name : candidates

Purpose :
Stores candidate profile information extracted
from applications and resumes.

Used For :
- Resume Management
- Application Tracking
- AI Analysis
- Interview Scheduling

Referenced By :
- candidate_skills
- applications
- resumes
- ai_analysis
- interviews
- reports

Primary Key :
- candidate_id
=========================================================
*/
CREATE TABLE public.candidates (
    candidate_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    full_name character varying(150) NOT NULL,
    email character varying(150) NOT NULL,
    phone character varying(20),
    experience_years numeric(4,1),
    education character varying(150),
    current_location character varying(100),
    linkedin_url text,
    portfolio_url text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_candidate_experience CHECK ((experience_years >= (0)::numeric))
);