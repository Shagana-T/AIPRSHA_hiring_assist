/*
=========================================================
Table Name : users

Purpose :
Stores system users who can access the application.

Supported Roles :
- Admin
- Recruiter

Used For :
- Authentication
- Authorization
- Login Tracking
- Password Reset
- Report Generation

Referenced By :
- job_descriptions
- interviews
- login_activity_logs
- password_resets
- reports

Primary Key :
- user_id
=========================================================
*/

CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),

    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(20),

    password_hash VARCHAR(255) NOT NULL,

    role VARCHAR(50) NOT NULL,

    department VARCHAR(100),

    account_status VARCHAR(20)
        DEFAULT 'ACTIVE',

    failed_attempt_count INTEGER
        DEFAULT 0,

    last_failed_attempt TIMESTAMP,

    lock_until TIMESTAMP,

    last_login TIMESTAMP,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP
);