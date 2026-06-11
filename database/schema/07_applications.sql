/*
=========================================================
Table Name : applications

Purpose :
Tracks candidate applications for jobs.

Used For :
- Recruitment Workflow
- Status Tracking
- Interview Processing

Statuses :
Applied
Shortlisted
Interview Scheduled
Selected
Rejected

Referenced By :
- resumes
- ai_analysis
- interviews
- reports

Primary Key :
- application_id

Foreign Keys :
- candidate_id
- jd_id
=========================================================
*/
CREATE TABLE public.applications (
    application_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    candidate_id uuid NOT NULL,
    jd_id uuid NOT NULL,
    status character varying(30) DEFAULT 'Applied'::character varying NOT NULL,
    applied_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    remarks text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_application_status CHECK (((status)::text = ANY ((ARRAY['Applied'::character varying, 'Under Review'::character varying, 'Shortlisted'::character varying, 'Interview Scheduled'::character varying, 'Selected'::character varying, 'Rejected'::character varying])::text[])))
);