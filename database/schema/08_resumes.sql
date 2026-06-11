/*
=========================================================
Table Name : resumes

Purpose :
Stores uploaded resume metadata and
Cloudinary file information.

Used For :
- Resume Parsing
- AI Analysis
- Vector Embedding Generation

Referenced By :
- ai_analysis
- resume_vectors

Primary Key :
- resume_id

Foreign Keys :
- application_id
- candidate_id
=========================================================
*/
CREATE TABLE public.resumes (
    resume_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    application_id uuid NOT NULL,
    candidate_id uuid NOT NULL,
    file_name character varying(255) NOT NULL,
    file_type character varying(20) NOT NULL,
    cloudinary_url text NOT NULL,
    cloudinary_public_id character varying(255) NOT NULL,
    file_size_kb integer,
    parsing_status character varying(30) DEFAULT 'PENDING'::character varying,
    upload_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);