/*
=========================================================
Table Name : reports

Purpose :
Stores generated PDF and CSV reports.

Used For :
- Candidate Reports
- Hiring Reports
- AI Analysis Reports
- Recruiter Reports

Primary Key :
- report_id

Foreign Keys :
- generated_by
- candidate_id
- application_id
- analysis_id

Storage :
Cloudinary File URLs
=========================================================
*/
CREATE TABLE public.reports (
    report_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    report_name character varying(255) NOT NULL,
    report_type character varying(50) NOT NULL,
    generated_by uuid NOT NULL,
    candidate_id uuid,
    application_id uuid,
    analysis_id uuid,
    report_url text,
    file_format character varying(20),
    generated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
