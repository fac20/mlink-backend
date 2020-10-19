BEGIN;

DROP TABLE IF EXISTS users, CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
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
    postgrad_exams text[],
    postgrad_exams_date DATE ARRAY,
    postgrad_exam_institutions VARCHAR(255) ARRAY,
    current_location VARCHAR(255),
    interested_specialities VARCHAR(255) ARRAY,
    contact_preference VARCHAR(255),
    open_to_collaboration boolean,
    open_to_giving_advice boolean,
    connections VARCHAR(255) ARRAY,
    connection_requests VARCHAR(255) ARRAY,
    bio VARCHAR(255),
    gmc_number INTEGER
);


CREATE TABLE workplace_list (
    ID INT NOT NULL PRIMARY,
    Workplace VARCHAR(255)
);


INSERT INTO users (title, fullname, phone_number, current_job_title, current_job_workplace,current_job_start,
    current_job_speciality, previous_job_titles,
    previous_job_start,
    previous_job_end,
    previous_job_speciality,
    degree_title ,
    medical_school,
    degree_start,
    degree_end,
    postgrad_exams,
    postgrad_exams_date,
    postgrad_exam_institutions,
    current_location,
    interested_specialities,
    contact_preference,
    open_to_collaboration,
    open_to_giving_advice,
    connections,
    connection_requests,
    bio,
    gmc_number) VALUES
    ('DR', 'Tony Miles', 07740234556, 'Surgeon', 'West Suffolk NHS Foundation Trust', 'Jan-08-2020', 'Clinical radiology', '{GP}', '{Jan-08-2018}', '{Jan-07-2020}',
    'Clinical oncology', 'MBChB', 'Queen Mary (Barts)', 'Jan-08-2010', 'Jan-08-2015','{BMBS, BMBCH}','{1999-01-08, 2000-01-08}', '{Bedford Hospital NHS Trust}', 'London', '{Anaesthesia, Audiovestibular medicine}', 'email', true, true, '{Sarah Jones}', '{}', 'doctor with a keen interest in collaborating on research', 76895438
    ),
    ('DR', 'Sarah Jones', 07740234556, 'Surgeon', 'West Suffolk NHS Foundation Trust', 'Jan-08-2020', 'Clinical radiology', '{GP}','{Jan-08-2018}', '{Jan-07-2020}',
    'Clinical oncology', 'MBChB', 'Queen Mary (Barts)', 'Jan-08-2010', 'Jan-08-2015',
    '{BMBS, BMBCH}','{1999-01-08, 2000-01-08}', '{Bedford Hospital NHS Trust}', 'London', '{Anaesthesia, Audiovestibular medicine}', 'email', TRUE, TRUE, '{Tony Miles}', '{}','doctor with a keen interest in collaborating on research', 76895438
    ),
    ('DR', 'Joe Bloggs', 07740234556, 'Surgeon', 'West Suffolk NHS Foundation Trust', 'Jan-08-2020', 'Clinical radiology', '{GP}', '{Jan-08-2018}', '{Jan-07-2020}',
    'Clinical oncology', 'MBChB', 'Queen Mary (Barts)', 'Jan-08-2010', 'Jan-08-2015',
    '{BMBS, BMBCH}','{1999-01-08, 2000-01-08}', '{Bedford Hospital NHS Trust}', 'London', '{Anaesthesia, Audiovestibular medicine}', 'email', TRUE, FALSE, '{}', '{Tony Miles}', 'doctor with a keen interest in collaborating on research', 76895438
    );