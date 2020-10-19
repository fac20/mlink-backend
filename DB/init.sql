BEGIN;

DROP TABLE IF EXISTS users, CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    title VARCHAR(4),
    phone_number INTEGER,
    current_job_title VARCHAR(255),
    current_job_workplace VARCHAR(255),
    current_job_start DATE,
    current_job_speciality VARCHAR(255) NOT NULL,
    previous_job_titles VARCHAR(255)ARRAY,
    previous_job_start DATE ARRAY,
    previous_job_end DATE ARRAY,
    previous_job_speciality VARCHAR(255),
    degree_title VARCHAR(255),
    medical_school VARCHAR(255),
    degree_start DATE,
    degree_end DATE,
    postgrad_exams text ARRAY,
    postgrad_exams_date DATE ARRAY,
    postgrad_exam_institution VARCHAR(255),
    current_location VARCHAR(255),
    interested_specialities VARCHAR(255) ARRAY,
    contact_preference VARCHAR(255) ARRAY,
    open_to_collaboration boolean,
    open_to_giving_advice boolean,
    connections VARCHAR(255) ARRAY,
    connection_requests VARCHAR(255) ARRAY,
    bio VARCHAR(255),
)

username * <<<< not added
password * <<< Skipped in table might be hosted somewhere else?
profile_photo
