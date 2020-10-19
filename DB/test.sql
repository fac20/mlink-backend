BEGIN;

DROP TABLE IF EXISTS users, CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    title VARCHAR(4),
    phone_number INTEGER,
    current_job_title VARCHAR(255),
    current_job_workplace int FOREIGN KEY REFERENCES workplace_list(ID),
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
    ID int NOT NULL PRIMARY KEY,
    workplace VARCHAR(255)
);


INSERT INTO workplace_list (workplace) VALUES
('Airedale NHS Foundation Trust'),
('Alder Hey Children''s NHS Foundation Trust'),
('Ashford and St Peter''s Hospitals NHS Foundation Trust'),
('Avon and Wiltshire Mental Health Partnership NHS Trust'),
('Barking, Havering and Redbridge University Hospitals NHS Trust'),
('Barnet, Enfield and Haringey Mental Health NHS Trust'),
('Barnsley Hospital NHS Foundation Trust'),
('Barts Health NHS Trust'),
('Bedford Hospital NHS Trust'),
('Berkshire Healthcare NHS Foundation Trust'),
('Birmingham and Solihull Mental Health NHS Foundation Trust'),
('Birmingham Community Healthcare NHS Foundation Trust'),
('Birmingham Women''s and Children''s NHS Foundation Trust'),
('Black Country Healthcare NHS Foundation Trust'),
('Blackpool Teaching Hospitals NHS Foundation Trust'),
('Bolton NHS Foundation Trust'),
('Bradford District NHS Foundation Trust'),
('Bradford Teaching Hospitals NHS Foundation Trust'),
('Bridgewater Community Healthcare NHS Foundation Trust'),
('Brighton and Sussex University Hospitals NHS Trust'),
('Buckinghamshire Healthcare NHS Trust')
('Burton Hospitals NHS Foundation Trust')
('Calderdale and Huddersfield NHS Foundation Trust')
('Cambridge University Hospitals NHS Foundation Trust')
('Cambridgeshire and Peterborough NHS Foundation Trust')
('Cambridgeshire Community Services NHS Trust')
('Camden and Islington NHS Foundation Trust')
('Central and North West London NHS Foundation Trust')
('Central London Community Healthcare NHS Trust')
('Chelsea and Westminster Hospital NHS Foundation Trust')
('Cheshire and Wirral Partnership NHS Foundation Trust')
('Chesterfield Royal Hospital NHS Foundation Trust')
('City Hospitals Sunderland NHS Foundation Trust')
('Cornwall Partnership NHS Foundation Trust')
('Countess Of Chester Hospital NHS Foundation Trust')
('County Durham and Darlington NHS Foundation Trust')
('Coventry and Warwickshire Partnership NHS Trust')
('Croydon Health Services NHS Trust')
('Cumbria Northumberland Tyne and Wear NHS Foundation Trust')
('Dartford and Gravesham NHS Trust')
('Derbyshire Community Health Services NHS Foundation Trust')
('Derbyshire Healthcare NHS Foundation Trust')
('Devon Partnership NHS Trust')
('Doncaster and Bassetlaw Teaching Hospitals NHS Foundation Trust')
('Dorset County Hospital NHS Foundation Trust')
('Dorset Healthcare University NHS Foundation Trust')
('Dudley Integrated Health and Care NHS Trust')
('East and North Hertfordshire NHS Trust')
('East Cheshire NHS Trust')
('East Kent Hospitals University NHS Foundation Trust')
('East Lancashire Hospitals NHS Trust')
('East London NHS Foundation Trust')
('East Midlands Ambulance Service NHS Trust')
('East Of England Ambulance Service NHS Trust')
('East Suffolk and North Essex NHS Foundation Trust')
('East Sussex Healthcare NHS Trust')
('Epsom and St Helier University Hospitals NHS Trust')
('Essex Partnership University NHS Foundation Trust')
('Frimley Health NHS Foundation Trust')
('Gateshead Health NHS Foundation Trust')
('George Eliot Hospital NHS Trust')
('Gloucestershire Care Services NHS Trust')
('Gloucestershire Health and Care NHS Foundation Trust')
('Gloucestershire Hospitals NHS Foundation Trust')
('Great Ormond Street Hospital for Children NHS Foundation Trust')
('Great Western Hospitals NHS Foundation Trust')
('Greater Manchester Mental Health NHS Foundation Trust')
('Guy''s and St Thomas'' NHS Foundation Trust')
('Hampshire Hospitals NHS Foundation Trust')
('Harrogate and District NHS Foundation Trust')
('Hertfordshire Community NHS Trust')
('Hertfordshire Partnership University NHS Foundation Trust')
('Homerton University Hospital NHS Foundation Trust')
('Hounslow and Richmond Community Healthcare NHS Trust')
('Hull University Teaching Hospitals NHS Trust')
('Humber Teaching NHS Foundation Trust')
('Imperial College Healthcare NHS Trust')
('Isle Of Wight NHS Trust')
('James Paget University Hospitals NHS Foundation Trust')
('Kent and Medway NHS and Social Care Partnership Trust')
('Kent Community Health NHS Foundation Trust')
('Kettering General Hospital NHS Foundation Trust')
('King''s College Hospital NHS Foundation Trust')
('Kingston Hospital NHS Foundation Trust')
('Lancashire & South Cumbria NHS Foundation Trust')
('Lancashire Teaching Hospitals NHS Foundation Trust')
('Leeds and York Partnership NHS Foundation Trust')
('Leeds Community Healthcare NHS Trust')
('Leeds Teaching Hospitals NHS Trust')
('Lewisham and Greenwich NHS Trust')
('Lincolnshire Community Health Services NHS Trust')
('Lincolnshire Partnership NHS Foundation Trust')
('Liverpool Heart and Chest NHS Foundation Trust')
('Liverpool University Hospitals NHS Foundation Trust')
('Liverpool Women''s NHS Foundation Trust')
('London Ambulance Service NHS Trust')
('London North West University Healthcare NHS Trust')
('Luton and Dunstable University Hospital NHS Foundation Trust')
('Maidstone and Tunbridge Wells NHS Trust')
('Manchester University NHS Foundation Trust')
('Medway NHS Foundation Trust')
('Mersey Care NHS Foundation Trust')
('Mid and South Essex NHS Foundation Trust')
('Mid Cheshire Hospitals NHS Foundation Trust')
('Mid Yorkshire Hospitals NHS Trust')
('Midlands Partnership NHS Foundation Trust')
('Milton Keynes University Hospital NHS Foundation Trust')
('Moorfields Eye Hospital NHS Foundation Trust')
('Norfolk and Norwich University Hospitals NHS Foundation Trust')
('Norfolk and Suffolk NHS Foundation Trust')
('Norfolk Community Health and Care NHS Trust')
('North Bristol NHS Trust')
('North Cumbria Integrated Care NHS Foundation Trust')
('North Cumbria University Hospitals NHS Trust')
('North East Ambulance Service NHS Foundation Trust')
('North East London NHS Foundation Trust')
('North Middlesex University Hospital NHS Trust')
('North Staffordshire Combined Healthcare NHS Trust')
('North Tees and Hartlepool NHS Foundation Trust')
('North West Ambulance Service NHS Trust')
('North West Anglia NHS Foundation Trust')
('North West Boroughs Healthcare NHS Foundation Trust')
('Northampton General Hospital NHS Trust')
('Northamptonshire Healthcare NHS Foundation Trust')
('Northern Devon Healthcare NHS Trust')
('Northern Lincolnshire and Goole NHS Foundation Trust')
('Northumbria Healthcare NHS Foundation Trust')
('Nottingham University Hospitals NHS Trust')
('Nottinghamshire Healthcare NHS Foundation Trust')
('Oxford Health NHS Foundation Trust')
('Oxford University Hospitals NHS Foundation Trust')
('Oxleas NHS Foundation Trust')
('Pennine Acute Hospitals NHS Trust')
('Pennine Care NHS Foundation Trust')
('Poole Hospital NHS Foundation Trust')
('Portsmouth Hospitals NHS Trust')
('Project Nightingale NHS Trust')
('Queen Victoria Hospital NHS Foundation Trust')
('Robert Jones and Agnes Hunt Orthopaedic and District Hospital NHS Trust')
('Rotherham Doncaster and South Humber NHS Foundation Trust')
('Royal Berkshire NHS Foundation Trust')
('Royal Brompton and Harefield NHS Foundation Trust')
('Royal Cornwall Hospitals NHS Trust')
('Royal Devon and Exeter NHS Foundation Trust')
('Royal Free London NHS Foundation Trust')
('Royal National Orthopaedic Hospital NHS Trust')
('Royal Papworth Hospital NHS Foundation Trust')
('Royal Surrey NHS Foundation Trust')
('Royal United Hospitals Bath NHS Foundation Trust')
('Salford Royal NHS Foundation Trust')
('Salisbury NHS Foundation Trust')
('Sandwell and West Birmingham Hospitals NHS Trust')
('Sheffield Children''s NHS Foundation Trust')
('Sheffield Health and Social Care NHS Foundation Trust')
('Sheffield Teaching Hospitals NHS Foundation Trust')
('Sherwood Forest Hospitals NHS Foundation Trust')
('Shrewsbury and Telford Hospital NHS Trust')
('Shropshire Community Health NHS Trust')
('Solent NHS Trust')
('Somerset Partnership NHS Foundation Trust')
('South Central Ambulance Service NHS Foundation Trust')
('South East Coast Ambulance Service NHS Foundation Trust')
('South London and Maudsley NHS Foundation Trust')
('South Tees Hospitals NHS Foundation Trust')
('South Tyneside And Sunderland NHS Foundation Trust')
('South Tyneside NHS Foundation Trust')
('South Warwickshire NHS Foundation Trust')
('South West London and St George''s Mental Health NHS Trust')
('South West Yorkshire Partnership NHS Foundation Trust')
('South Western Ambulance Service NHS Foundation Trust')
('Southern Health NHS Foundation Trust')
('Southport and Ormskirk Hospital NHS Trust')
('St George''s University Hospitals NHS Foundation Trust')
('St Helens and Knowsley Hospitals NHS Trust')
('Stockport NHS Foundation Trust')
('Surrey and Borders Partnership NHS Foundation Trust')
('Surrey and Sussex Healthcare NHS Trust')
('Sussex Community NHS Foundation Trust')
('Sussex Partnership NHS Foundation Trust')
('Tameside Hospital NHS Foundation Trust')
('Taunton and Somerset NHS Foundation Trust')
('Tavistock and Portman NHS Foundation Trust')
('Tees, Esk and Wear Valleys NHS Foundation Trust')
('The Christie NHS Foundation Trust')
('The Clatterbridge Cancer Centre NHS Foundation Trust')
('The Dudley Group NHS Foundation Trust')
('The Hillingdon Hospitals NHS Foundation Trust')
('The Newcastle Upon Tyne Hospitals NHS Foundation Trust')
('The Princess Alexandra Hospital NHS Trust')
('The Queen Elizabeth Hospital, King''s Lynn. NHS Foundation Trust')
('The Rotherham NHS Foundation Trust')
('The Royal Bournemouth and Christchurch Hospitals NHS Foundation Trust')
('The Royal Marsden NHS Foundation Trust')
('The Royal Orthopaedic Hospital NHS Foundation Trust')
('The Royal Wolverhampton NHS Trust')
('The Walton Centre NHS Foundation Trust')
('Torbay and South Devon NHS Foundation Trust')
('United Lincolnshire Hospitals NHS Trust')
('University College London Hospitals NHS Foundation Trust')
('University Hospital of Derby and Burton NHS Foundation Trust')
('University Hospital Southampton NHS Foundation Trust')
('University Hospitals Birmingham NHS Foundation Trust')
('University Hospitals Bristol and Weston NHS Foundation Trust')
('University Hospitals Coventry and Warwickshire NHS Trust')
('University Hospitals Dorset NHS Foundation Trust')
('University Hospitals Of Leicester NHS Trust')
('University Hospitals Of Morecambe Bay NHS Foundation Trust')
('University Hospitals of North Midlands')
('University Hospitals Plymouth NHS Trust')
('Walsall Healthcare NHS Trust')
('Warrington and Halton Hospitals NHS Foundation Trust')
('West Hertfordshire Hospitals NHS Trust')
('West London NHS Trust')
('West Midlands Ambulance Service University NHS Foundation Trust')
('West Suffolk NHS Foundation Trust')
('Western Sussex Hospitals NHS Foundation Trust')
('Whittington Health NHS Trust')
('Wirral Community NHS Foundation Trust')
('Wirral University Teaching Hospital NHS Foundation Trust')
('Worcestershire Acute Hospitals NHS Trust')
('Worcestershire Health and Care NHS Trust')
('Wrightington, Wigan and Leigh NHS Foundation Trust')
('Wye Valley NHS Trust')
('Yeovil District Hospital NHS Foundation Trust')
('York Teaching Hospital NHS Foundation Trust')
('Yorkshire Ambulance Service NHS Trust');


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
