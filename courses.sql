INSERT INTO Departments (Department_ID, Faculty_ID, Department_Name)
VALUES
-- ('ENG-COM', 'ENG', 'قسم علوم الكمبيوتر'),
-- ('ENG-ECE', 'ENG', 'قسم الهندسة الكهربائية والحاسوبية'),
-- ('ENG-ME', 'ENG', 'قسم الهندسة الميكانيكية'),
-- ('ENG-CE', 'ENG', 'قسم الهندسة المدنية'),
-- ('ENG-CHE', 'ENG', 'قسم الهندسة الكيميائية'),
-- ('SCI-MATH', 'SCI', 'قسم الرياضيات والإحصاء'),
-- ('SCI-PHY', 'SCI', 'قسم الفيزياء وعلم الفلك'),
-- ('SCI-CHEM', 'SCI', 'قسم الكيمياء'),
-- ('SCI-BIO', 'SCI', 'قسم الأحياء'),
-- ('BUS-ACC', 'BUS', 'قسم المحاسبة والتمويل'),
-- ('BUS-MGT', 'BUS', 'قسم إدارة الأعمال'),
-- ('BUS-MKT', 'BUS', 'قسم التسويق'),
-- ('ART-ENG', 'ART', 'قسم اللغة الإنجليزية'),
-- ('ART-ARB', 'ART', 'قسم اللغة العربية'),
-- ('ART-LANG', 'ART', 'قسم اللغات الحديثة والأدب'),
-- ('ART-HIST', 'ART', 'قسم التاريخ'),
-- ('EDU-PSY', 'EDU', 'قسم علم النفس التربوي'),
-- ('EDU-CURR', 'EDU', 'قسم المناهج وطرق التدريس'),
-- ('EDU-LEAD', 'EDU', 'قسم القيادة التربوية والسياسات'),
-- ('LAW-CIV', 'LAW', 'قسم القانون العام'),
-- ('LAW-INT', 'LAW', 'قسم القانون الدولي'),
-- ('MED-MED', 'MED', 'قسم الطب'),
-- ('MED-SURG', 'MED', 'قسم الجراحة'),
-- ('MED-PHARM', 'MED', 'قسم الصيدلة'),
-- ('ENV-SCI', 'ENV', 'قسم علوم البيئة'),
-- ('ENV-GEO', 'ENV', 'قسم الجغرافيا'),
-- ('ENV-PLAN', 'ENV', 'قسم التخطيط العمراني'),
-- ('KIN-KIN', 'KIN', 'قسم علوم الحركة'),
('KIN-PE', 'KIN', 'قسم التربية البدنية'),
('KIN-ATH', 'KIN', 'قسم العلاج الرياضي');

INSERT INTO Courses (Course_ID, Course_Name, Credit_Hours, Level, Semester, Dependency_Course_ID)
VALUES

  --ENG-COM
    -- Year 1, Semester 1
    ('CS101', 'Introduction to Programming', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('CS130', 'Computer Hardware Fundamentals', 3, 1, 1, 'CS101'),
    ('CS150', 'Introduction to Databases', 3, 1, 1, 'CS101'),

    -- Year 1, Semester 2
    ('CS102', 'Data Structures and Algorithms', 3, 1, 2, 'CS101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('CS110', 'Introduction to Web Development', 3, 1, 2, 'CS101'),
    ('CS120', 'Computer Science Fundamentals', 3, 1, 2, NULL),
    ('CS140', 'Introduction to Software Engineering', 3, 1, 2, 'CS101'),
    ('STAT101', 'Introduction to Statistics', 3, 1, 2, 'MATH101'),

    -- Year 2, Semester 1
    ('CS201', 'Computer Architecture', 3, 2, 1, 'CS101'),
    ('MATH201', 'Discrete Mathematics', 3, 2, 1, 'MATH102'),  
    ('CS230', 'Networks and Communication', 3, 2, 1, 'CS101'),
    ('CS250', 'Systems Analysis and Design', 3, 2, 1, 'CS140'),
    ('CS270', 'Introduction to Cybersecurity', 3, 2, 1, 'CS101'),
    ('CS290', 'Introduction to Machine Learning', 3, 2, 1, 'CS140'),

    -- Year 2, Semester 2
    ('CS202', 'Operating Systems', 3, 2, 2, 'CS101'),
    ('CS210', 'Database Systems', 3, 2, 2, 'CS201'),
    ('CS220', 'Algorithms and Complexity', 3, 2, 2, 'CS102'),
    ('CS240', 'Human-Computer Interaction', 3, 2, 2, NULL),
    ('CS260', 'Software Testing and Quality Assurance', 3, 2, 2, 'CS140'),
    ('ECON101', 'Principles of Economics', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('CS301', 'Software Engineering', 3, 3, 1, 'CS202'),
    ('CS302', 'Computer Graphics', 3, 3, 1, 'CS101'),
    ('CS310', 'Introduction To Artificial Intelligence', 3, 3, 1, 'CS202'),
    ('CS315', 'Artificial Intelligence Development', 3, 3, 1, 'CS310'),
    ('CS320', 'Machine Learning I', 3, 3, 1, 'CS202'),
    ('CS330', 'Cybersecurity I', 3, 3, 1, 'CS202'),

    -- Year 3, Semester 2
    ('CS325', 'Machine Learning II', 3, 3, 2, 'CS320'),
    ('CS335', 'Cybersecurity II', 3, 3, 2, 'CS330'),
    ('CS340', 'Natural Language Processing', 3, 3, 2, 'CS202'), 
    ('CS350', 'Software Design Patterns', 3, 3, 2, 'CS301'),
    ('CS360', 'Cloud Computing', 3, 3, 2, 'CS240'),
    ('BUS101', 'Introduction to Business Management', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('CS401', 'Capstone Project', 3, 4, 1, 'CS302'),
    ('CS402', 'Internship in Computer Science', 3, 4, 1, NULL),
    ('CS403', 'Advanced Topics in Computer Science', 3, 4, 1, NULL),
    ('CS404', 'Computer Ethics and Society', 3, 4, 1, NULL),
    ('CS405', 'Big Data Analytics', 3, 4, 1, 'CS320'),
    ('CS406', 'Mobile Application Development', 3, 4, 1, 'CS220'),

    -- Year 4, Semester 2
    ('CS407', 'Advanced Algorithms', 3, 4, 2, 'CS220'),
    ('CS408', 'Blockchain Technology', 3, 4, 2, 'CS220'),
    ('CS409', 'Internet of Things', 3, 4, 2, 'CS230'),
    ('CS410', 'Virtual Reality', 3, 4, 2, 'CS302'),
    ('CS411', 'Quantum Computing', 3, 4, 2, 'CS340'),
    ('CS412', 'Ethical Hacking', 3, 4, 2, 'CS335');



  --ENG-ECE
      -- Year 1, Semester 1
    ('ECE101', 'Introduction to Electrical Engineering', 3, 1, 1, 'MATH101'),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('COMP101', 'Introduction to Computing', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ECE102', 'Digital Circuits', 3, 1, 2, 'ECE101'),
    ('ECE110', 'Introduction to Programming for Engineers', 3, 1, 2, NULL),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('PHYS102', 'Physics II', 3, 1, 2, 'PHYS101'),
    ('ECE120', 'Introduction to Electronics', 3, 1, 2, 'ECE101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),

    -- Year 2, Semester 1
    ('ECE201', 'Electronics I', 3, 2, 1, 'ECE102'),
    ('ECE220', 'Microprocessors and Assembly Language', 3, 2, 1, 'ECE102'),
    ('MATH201', 'Multivariable Calculus', 3, 2, 1, 'MATH102'),
    ('PHYS201', 'Electricity and Magnetism', 3, 2, 1, 'PHYS102'),
    ('ECE210', 'Electromagnetics I', 3, 2, 1, 'ECE201'),
    ('HUM101', 'Introduction to Humanities', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('ECE202', 'Signals and Systems', 3, 2, 2, 'MATH201'),
    ('ECE230', 'Introduction to Control Systems', 3, 2, 2, 'ECE202'),
    ('MATH202', 'Linear Algebra II', 3, 2, 2, 'MATH202'),
    ('ECE240', 'Introduction to Communication Systems', 3, 2, 2, 'ECE102'),
    ('ECE250', 'Digital Systems Design', 3, 2, 2, 'ECE102'),
    ('SS101', 'Social Sciences Elective', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('ECE301', 'Communication Systems', 3, 3, 1, 'ECE201'),
    ('ECE310', 'Electromagnetics II', 3, 3, 1, 'ECE210'),
    ('ECE320', 'Digital Signal Processing I', 3, 3, 1, 'ECE202'),
    ('ECE330', 'Control Systems Design', 3, 3, 1, 'ECE230'),
    ('ECE340', 'Computer Architecture', 3, 3, 1, 'ECE102'),
    ('MATH301', 'Probability and Statistics', 3, 3, 1, 'MATH202'),

    -- Year 3, Semester 2
    ('ECE302', 'Power Electronics', 3, 3, 2, 'ECE201'),
    ('ECE350', 'VLSI Design', 3, 3, 2, 'ECE220'),
    ('ECE360', 'Wireless Communication Systems', 3, 3, 2, 'ECE301'),
    ('ECE370', 'Embedded Systems', 3, 3, 2, 'ECE250'),
    ('ECE380', 'Antennas and Propagation', 3, 3, 2, 'ECE310'),
    ('TECH101', 'Technology and Society', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('ECE401', 'Senior Design Project', 3, 4, 1, 'ECE302'),
    ('ECE402', 'Professional Practice in Electrical Engineering', 3, 4, 1, NULL),
    ('ECE403', 'Advanced Topics in Electrical Engineering', 3, 4, 1, NULL),
    ('ECE404', 'Power System Analysis', 3, 4, 1, 'ECE330'),
    ('ECE405', 'Telecommunication Networks', 3, 4, 1, 'ECE301'),
    ('ECE406', 'Optoelectronics', 3, 4, 1, 'ECE302'),

    -- Year 4, Semester 2
    ('ECE407', 'Renewable Energy Systems', 3, 4, 2, 'ECE302'),
    ('ECE408', 'Cyber-Physical Systems', 3, 4, 2, 'ECE370'),
    ('ECE409', 'Advanced Digital Signal Processing', 3, 4, 2, 'ECE320'),
    ('ECE410', 'Satellite Communication Systems', 3, 4, 2, 'ECE360'),
    ('ECE411', 'Robotics and Automation', 3, 4, 2, 'ECE370'),
    ('ECE412', 'Advanced Wireless Networks', 3, 4, 2, 'ECE360');



  --ENG-ME
    -- Year 1, Semester 1
    ('ME101', 'Introduction to Mechanical Engineering', 3, 1, 1, 'MATH101'),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('ME103', 'Engineering Graphics', 2, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ME102', 'Engineering Mechanics: Statics', 3, 1, 2, 'PHYS101'),
    ('ME110', 'Introduction to Mechatronics', 3, 1, 2, 'ME103'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('PHYS102', 'Physics II', 3, 1, 2, 'PHYS101'),
    ('ME120', 'Materials Science', 3, 1, 2, 'CHEM101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),

    -- Year 2, Semester 1
    ('ME201', 'Mechanics of Materials', 3, 2, 1, 'ME102'),
    ('PHYS201', 'Electricity and Magnetism', 3, 2, 1, 'PHYS102'),
    ('ME203', 'Manufacturing Processes', 3, 2, 1, 'ME103'),
    ('MATH202', 'Linear Algebra', 3, 2, 1, 'MATH102'),
    ('ME210', 'Machine Design I', 3, 2, 1, 'ME201'),
    ('HUM101', 'Introduction to Humanities', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('ME202', 'Thermodynamics I', 3, 2, 2, 'PHYS102'),
    ('ME220', 'Fluid Mechanics', 3, 2, 2, 'ME202'),
    ('ME230', 'Computer-Aided Design (CAD)', 3, 2, 2, 'ME103'),
    ('ME240', 'Dynamics', 3, 2, 2, 'ME102'),
    ('ME250', 'Engineering Economics', 3, 2, 2, 'MATH101'),
    ('SS101', 'Social Sciences Elective', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('ME301', 'Heat Transfer', 3, 3, 1, 'ME202'),
    ('ME310', 'Control Systems for Mechanical Engineering', 3, 3, 1, 'MATH202'),
    ('ME320', 'Mechatronics', 3, 3, 1, 'ME210'),
    ('ME330', 'Finite Element Analysis', 3, 3, 1, 'ME201'),
    ('ME340', 'Engineering Ethics and Professionalism', 3, 3, 1, NULL),
    ('TECH101', 'Technology and Society', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('ME302', 'Machine Design II', 3, 3, 2, 'ME210'),
    ('ME330', 'Advanced Fluid Mechanics', 3, 3, 2, 'ME220'),
    ('ME340', 'Vibration Analysis', 3, 3, 2, 'ME240'),
    ('ME350', 'Energy Systems Engineering', 3, 3, 2, 'ME202'),
    ('ME360', 'Robotics', 3, 3, 2, 'ME320'),
    ('ME370', 'Engineering Project Management', 3, 3, 2, 'ME340'),

    -- Year 4, Semester 1
    ('ME401', 'Senior Design Project', 3, 4, 1, 'ME302'),
    ('ME402', 'Professional Practice in Mechanical Engineering', 3, 4, 1, NULL),
    ('ME403', 'Advanced Topics in Mechanical Engineering', 3, 4, 1, NULL),
    ('ME404', 'Renewable Energy Technologies', 3, 4, 1, 'ME350'),
    ('ME405', 'Advanced Manufacturing', 3, 4, 1, 'ME203'),
    ('ME406', 'Engineering Law and Regulations', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('ME407', 'Industrial Internship', 3, 4, 2, NULL),
    ('ME408', 'Composite Materials', 3, 4, 2, 'ME201'),
    ('ME409', 'Hydraulic and Pneumatic Systems', 3, 4, 2, 'ME220'),
    ('ME410', 'Advanced Control Systems', 3, 4, 2, 'ME310'),
    ('ME411', 'Engineering Entrepreneurship', 3, 4, 2, NULL),
    ('ME412', 'Failure Analysis and Prevention', 3, 4, 2, 'ME302');



  --ENG-CHE
    -- Year 1, Semester 1
    ('CHE101', 'Introduction to Chemical Engineering', 3, 1, 1, 'MATH101'),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('CHE103', 'Chemical Engineering Calculations', 3, 1, 1, 'MATH101'),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('CHE102', 'Stoichiometry', 3, 1, 2, 'CHEM101'),
    ('CHEM102', 'General Chemistry II', 3, 1, 2, 'CHEM101'),
    ('CHEM110', 'Introduction to Materials Science', 3, 1, 2, 'CHEM102'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('SS101', 'Social Sciences Elective', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('CHEM201', 'Thermodynamics I', 3, 2, 1, 'PHYS101'),
    ('MATH202', 'Linear Algebra', 3, 2, 1, 'MATH102'),
    ('CHEM203', 'Heat and Mass Transfer Fundamentals', 3, 2, 1, 'CHEM102'),
    ('CHEM220', 'Introduction to Biochemical Engineering', 3, 2, 1, 'BIOL101'),
    ('CHEM210', 'Chemical Reaction Engineering', 3, 2, 1, 'CHEM201'),
    ('HUM101', 'Introduction to Humanities', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('CHEM202', 'Fluid Mechanics', 3, 2, 2, 'MATH202'),
    ('PHYS201', 'Physics II', 3, 2, 2, 'PHYS101'),
    ('CHEM230', 'Separation Processes', 3, 2, 2, 'CHEM203'),
    ('CHEM240', 'Process Control', 3, 2, 2, 'CHEM201'),
    ('CHEM250', 'Chemical Engineering Thermodynamics II', 3, 2, 2, 'CHEM201'),
    ('TECH101', 'Technology and Society', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('CHEM310', 'Polymer Science and Engineering', 3, 3, 1, 'CHEM210'),
    ('CHEM320', 'Environmental Engineering', 3, 3, 1, 'CHEM203'),
    ('CHEM330', 'Petroleum Refining', 3, 3, 1, 'CHEM210'),
    ('CHEM340', 'Pharmaceutical Engineering', 3, 3, 1, 'CHEM220'),
    ('CHEM350', 'Electrochemical Engineering', 3, 3, 1, 'CHEM201'),
    ('BUS101', 'Introduction to Business Management', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('CHEM360', 'Process Safety and Risk Assessment', 3, 3, 2, 'CHEM201'),
    ('CHEM370', 'Bioprocess Engineering', 3, 3, 2, 'CHEM220'),
    ('CHEM380', 'Nanotechnology in Chemical Engineering', 3, 3, 2, 'CHEM210'),
    ('CHEM390', 'Green Engineering Principles', 3, 3, 2, 'CHEM320'),
    ('CHEM400', 'Chemical Process Modeling and Simulation', 3, 3, 2, 'CHEM250'),
    ('CHEM410', 'Advanced Reactor Design', 3, 3, 2, 'CHEM310'),

    -- Year 4, Semester 1
    ('CHEM401', 'Senior Design Project', 3, 4, 1, 'CHEM400'),
    ('CHEM402', 'Professional Practice in Chemical Engineering', 3, 4, 1, NULL),
    ('CHEM403', 'Advanced Topics in Chemical Engineering', 3, 4, 1, NULL),
    ('CHEM404', 'Process Intensification', 3, 4, 1, 'CHEM350'),
    ('CHEM405', 'Renewable Energy Systems', 3, 4, 1, 'CHEM330'),
    ('CHEM406', 'Waste Management and Pollution Control', 3, 4, 1, 'CHEM320'),

    -- Year 4, Semester 2
    ('CHEM407', 'Industrial Internship', 3, 4, 2, NULL),
    ('CHEM408', 'Advanced Materials Engineering', 3, 4, 2, 'CHEM380'),
    ('CHEM409', 'Chemical Engineering Economics and Project Management', 3, 4, 2, 'CHEM250'),
    ('CHEM410', 'Catalysis and Reaction Engineering', 3, 4, 2, 'CHEM310'),
    ('CHEM411', 'Sustainable Process Engineering', 3, 4, 2, 'CHEM390'),
    ('CHEM412', 'Regulatory Compliance in Chemical Engineering', 3, 4, 2, 'CHEM402');


  --ENG-CE
    -- Year 1, Semester 1
    ('CE101', 'Introduction to Civil Engineering', 3, 1, 1, 'MATH101'),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ENG101', 'Engineering Drawing', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('CE102', 'Civil Engineering Materials', 3, 1, 2, 'CHEM101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('PHYS102', 'Physics II', 3, 1, 2, 'PHYS101'),
    ('ENG102', 'Surveying', 3, 1, 2, NULL),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('SS101', 'Social Sciences Elective', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('CE201', 'Structural Analysis', 3, 2, 1, 'CE102'),
    ('CE202', 'Geotechnical Engineering', 3, 2, 1, 'CE102'),
    ('CE203', 'Fluid Mechanics', 3, 2, 1, 'PHYS102'),
    ('MATH201', 'Differential Equations', 3, 2, 1, 'MATH102'),
    ('ENG201', 'Transportation Engineering', 3, 2, 1, NULL),
    ('HUM101', 'Introduction to Humanities', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('CE204', 'Concrete Technology', 3, 2, 2, 'CE102'),
    ('CE205', 'Soil Mechanics', 3, 2, 2, 'CE202'),
    ('CE206', 'Hydraulics', 3, 2, 2, 'CE203'),
    ('CE207', 'Construction Engineering', 3, 2, 2, 'ENG102'),
    ('CE208', 'Environmental Engineering', 3, 2, 2, 'CHEM101'),
    ('TECH101', 'Technology and Society', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('CE301', 'Structural Design I', 3, 3, 1, 'CE201'),
    ('CE302', 'Foundation Engineering', 3, 3, 1, 'CE205'),
    ('CE303', 'Water Resources Engineering', 3, 3, 1, 'CE206'),
    ('CE304', 'Highway Engineering', 3, 3, 1, 'ENG201'),
    ('CE305', 'Construction Management', 3, 3, 1, 'CE207'),
    ('BUS101', 'Introduction to Business Management', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('CE306', 'Steel Structures', 3, 3, 2, 'CE201'),
    ('CE307', 'Urban Planning and Design', 3, 3, 2, 'CE208'),
    ('CE308', 'Geographic Information Systems (GIS)', 3, 3, 2, 'CE202'),
    ('CE309', 'Environmental Impact Assessment', 3, 3, 2, 'CE208'),
    ('CE310', 'Project Engineering and Management', 3, 3, 2, 'CE305'),
    ('CE311', 'Engineering Ethics and Professionalism', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('CE401', 'Senior Design Project', 3, 4, 1, 'CE301'),
    ('CE402', 'Professional Practice in Civil Engineering', 3, 4, 1, NULL),
    ('CE403', 'Advanced Topics in Civil Engineering', 3, 4, 1, NULL),
    ('CE404', 'Bridge Engineering', 3, 4, 1, 'CE306'),
    ('CE405', 'Earthquake Engineering', 3, 4, 1, 'CE302'),
    ('CE406', 'Construction Materials Management', 3, 4, 1, 'CE204'),

    -- Year 4, Semester 2
    ('CE407', 'Internship in Civil Engineering', 3, 4, 2, NULL),
    ('CE408', 'Advanced Concrete Technology', 3, 4, 2, 'CE204'),
    ('CE409', 'Traffic Engineering', 3, 4, 2, 'CE304'),
    ('CE410', 'Sustainable Infrastructure Development', 3, 4, 2, 'CE303'),
    ('CE411', 'Coastal Engineering', 3, 4, 2, 'CE306'),
    ('CE412', 'Remote Sensing Applications in Civil Engineering', 3, 4, 2, 'CE308');




  --SCI-MATH
    -- Year 1, Semester 1
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('MATH102', 'Calculus II', 3, 1, 1, 'MATH101'),
    ('STAT101', 'Introduction to Statistics', 3, 1, 1, NULL),
    ('CMSC101', 'Introduction to Computer Science', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('MATH103', 'Multivariable Calculus', 3, 1, 2, 'MATH102'),
    ('MATH104', 'Introduction to Linear Algebra', 3, 1, 2, 'MATH101'),
    ('STAT102', 'Probability Theory', 3, 1, 2, 'STAT101'),
    ('CMSC102', 'Data Structures and Algorithms', 3, 1, 2, 'CMSC101'),
    ('PHYS102', 'Physics II', 3, 1, 2, 'PHYS101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),

    -- Year 2, Semester 1
    ('MATH201', 'Introduction to Differential Equations', 3, 2, 1, 'MATH103'),
    ('MATH202', 'Advanced Linear Algebra', 3, 2, 1, 'MATH104'),
    ('STAT201', 'Mathematical Statistics', 3, 2, 1, 'STAT102'),
    ('CMSC201', 'Algorithm Design and Analysis', 3, 2, 1, 'CMSC102'),
    ('CHEM101', 'General Chemistry I', 3, 2, 1, NULL),
    ('HUM101', 'Introduction to Humanities', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('MATH203', 'Complex Analysis', 3, 2, 2, 'MATH201'),
    ('MATH204', 'Numerical Methods', 3, 2, 2, 'MATH103'),
    ('STAT202', 'Regression Analysis', 3, 2, 2, 'STAT201'),
    ('CMSC202', 'Database Systems', 3, 2, 2, 'CMSC201'),
    ('CHEM102', 'General Chemistry II', 3, 2, 2, 'CHEM101'),
    ('SS101', 'Social Sciences Elective', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('MATH301', 'Real Analysis', 3, 3, 1, 'MATH203'),
    ('MATH302', 'Topology', 3, 3, 1, 'MATH201'),
    ('STAT301', 'Stochastic Processes', 3, 3, 1, 'STAT202'),
    ('CMSC301', 'Operating Systems', 3, 3, 1, 'CMSC202'),
    ('PHYS201', 'Electricity and Magnetism', 3, 3, 1, 'PHYS102'),
    ('BUS101', 'Introduction to Business Management', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('MATH303', 'Partial Differential Equations', 3, 3, 2, 'MATH301'),
    ('MATH304', 'Discrete Mathematics', 3, 3, 2, 'MATH202'),
    ('STAT302', 'Time Series Analysis', 3, 3, 2, 'STAT301'),
    ('CMSC302', 'Computer Networks', 3, 3, 2, 'CMSC202'),
    ('PHYS202', 'Quantum Mechanics', 3, 3, 2, 'PHYS201'),
    ('TECH101', 'Technology and Society', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('MATH401', 'Functional Analysis', 3, 4, 1, 'MATH301'),
    ('MATH402', 'Number Theory', 3, 4, 1, 'MATH303'),
    ('STAT401', 'Bayesian Statistics', 3, 4, 1, 'STAT302'),
    ('CMSC401', 'Artificial Intelligence', 3, 4, 1, 'CMSC302'),
    ('MATH403', 'Mathematical Modeling', 3, 4, 1, 'MATH304'),
    ('MATH404', 'Mathematics Education', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('MATH405', 'Combinatorics', 3, 4, 2, 'MATH302'),
    ('MATH406', 'Differential Geometry', 3, 4, 2, 'MATH303'),
    ('STAT402', 'Nonparametric Statistics', 3, 4, 2, 'STAT301'),
    ('CMSC402', 'Machine Learning', 3, 4, 2, 'CMSC401'),
    ('MATH407', 'Mathematical Finance', 3, 4, 2, 'MATH403'),
    ('MATH408', 'Research Seminar in Mathematics', 3, 4, 2, 'MATH401');


  --SCI-PHY
    -- Year 1, Semester 1
    ('PHYC101', 'Mechanics', 3, 1, 1, 'MATH101'),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('SS101', 'Social Sciences Elective', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('PHYC102', 'Electricity and Magnetism I', 3, 1, 2, 'MATH102'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('PHYC110', 'Introduction to Astrophysics', 3, 1, 2, 'NULL'),
    ('PHYC120', 'Computational Physics', 3, 1, 2, 'MATH102'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('HUM101', 'Introduction to Humanities', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('PHYC201', 'Thermal Physics', 3, 2, 1, 'PHYC101'),
    ('MATH201', 'Discrete Mathematics', 3, 2, 1, 'MATH102'),
    ('PHYC210', 'Electronics for Physicists', 3, 2, 1, 'PHYC102'),
    ('PHYC230', 'Statistical Mechanics', 3, 2, 1, 'PHYC201'),
    ('CHEM102', 'General Chemistry II', 3, 2, 1, 'CHEM101'),
    ('BUS101', 'Introduction to Business Management', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('PHYC202', 'Quantum Mechanics I', 3, 2, 2, 'MATH202'),
    ('MATH202', 'Linear Algebra', 3, 2, 2, 'MATH102'),
    ('PHYC220', 'Cosmology', 3, 2, 2, 'PHYC110'),
    ('PHYC240', 'Optics', 3, 2, 2, 'PHYC102'),
    ('CMSC101', 'Introduction to Computer Science', 3, 2, 2, NULL),
    ('TECH101', 'Technology and Society', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('PHYC301', 'Electrodynamics I', 3, 3, 1, 'PHYC202'),
    ('PHYC310', 'Nuclear and Particle Physics', 3, 3, 1, 'PHYC202'),
    ('PHYC320', 'General Relativity', 3, 3, 1, 'PHYC220'),
    ('PHYC330', 'Plasma Physics', 3, 3, 1, 'PHYC230'),
    ('PHYC340', 'Astrophysical Techniques', 3, 3, 1, 'PHYC110'),
    ('HUM201', 'Advanced Humanities Seminar', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('PHYC302', 'Solid State Physics', 3, 3, 2, 'PHYC201'),
    ('PHYC311', 'Particle Accelerators', 3, 3, 2, 'PHYC310'),
    ('PHYC321', 'Gravitational Waves', 3, 3, 2, 'PHYC320'),
    ('PHYC331', 'Solar Physics', 3, 3, 2, 'PHYC340'),
    ('PHYC341', 'Exoplanetary Science', 3, 3, 2, 'PHYC110'),
    ('PHYC350', 'Quantum Information Science', 3, 3, 2, 'PHYC202'),

    -- Year 4, Semester 1
    ('PHYC401', 'Quantum Mechanics II', 3, 4, 1, 'PHYC301'),
    ('PHYC402', 'Advanced Electrodynamics', 3, 4, 1, 'PHYC301'),
    ('PHYC403', 'Astrophysical Fluid Dynamics', 3, 4, 1, 'PHYC320'),
    ('PHYC404', 'Experimental Techniques in Physics', 3, 4, 1, 'PHYC302'),
    ('PHYC405', 'Quantum Field Theory', 3, 4, 1, 'PHYC401'),
    ('PHYC406', 'Space Mission Design', 3, 4, 1, 'PHYC310'),

    -- Year 4, Semester 2
    ('PHYC407', 'Advanced Astrophysics', 3, 4, 2, 'PHYC340'),
    ('PHYC408', 'Particle Physics Phenomenology', 3, 4, 2, 'PHYC310'),
    ('PHYC409', 'Quantum Computing', 3, 4, 2, 'PHYC350'),
    ('PHYC410', 'General Astronomy', 3, 4, 2, 'PHYC110'),
    ('PHYC411', 'Experimental Cosmology', 3, 4, 2, 'PHYC321'),
    ('PHYC412', 'Research Seminar in Physics', 3, 4, 2, 'PHYC401');


  --SCI-BIO
    -- Year 1, Semester 1
    ('BIOL101', 'Introduction to Biology', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('SS101', 'Social Sciences Elective', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('BIOL102', 'Cell Biology', 3, 1, 2, 'BIOL101'),
    ('CHEM102', 'General Chemistry II', 3, 1, 2, 'CHEM101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('PHYS102', 'Physics II', 3, 1, 2, 'PHYS101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('HUM101', 'Introduction to Humanities', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('BIOL201', 'Genetics', 3, 2, 1, 'BIOL102'),
    ('CHEM201', 'Organic Chemistry I', 3, 2, 1, 'CHEM102'),
    ('MATH201', 'Statistics for Biologists', 3, 2, 1, 'MATH102'),
    ('BIOL202', 'Microbiology', 3, 2, 1, 'BIOL102'),
    ('BIOL210', 'Ecology', 3, 2, 1, 'BIOL101'),
    ('CMSC101', 'Introduction to Computer Science', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('BIOL203', 'Biochemistry', 3, 2, 2, 'BIOL201'),
    ('CHEM202', 'Organic Chemistry II', 3, 2, 2, 'CHEM201'),
    ('MATH202', 'Biostatistics', 3, 2, 2, 'MATH201'),
    ('BIOL204', 'Evolutionary Biology', 3, 2, 2, 'BIOL210'),
    ('BIOL220', 'Physiology', 3, 2, 2, 'BIOL102'),
    ('TECH101', 'Technology and Society', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('BIOL301', 'Molecular Biology', 3, 3, 1, 'BIOL203'),
    ('BIOL302', 'Developmental Biology', 3, 3, 1, 'BIOL201'),
    ('BIOL310', 'Plant Biology', 3, 3, 1, 'BIOL210'),
    ('BIOL320', 'Zoology', 3, 3, 1, 'BIOL210'),
    ('BIOL330', 'Immunology', 3, 3, 1, 'BIOL202'),
    ('BUS101', 'Introduction to Business Management', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('BIOL303', 'Cancer Biology', 3, 3, 2, 'BIOL301'),
    ('BIOL311', 'Environmental Biology', 3, 3, 2, 'BIOL310'),
    ('BIOL321', 'Animal Behavior', 3, 3, 2, 'BIOL320'),
    ('BIOL331', 'Neurobiology', 3, 3, 2, 'BIOL220'),
    ('BIOL340', 'Bioinformatics', 3, 3, 2, 'BIOL201'),
    ('HUM201', 'Advanced Humanities Seminar', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('BIOL401', 'Advanced Genetics', 3, 4, 1, 'BIOL301'),
    ('BIOL402', 'Systems Biology', 3, 4, 1, 'BIOL303'),
    ('BIOL403', 'Ecological Genetics', 3, 4, 1, 'BIOL310'),
    ('BIOL404', 'Conservation Biology', 3, 4, 1, 'BIOL311'),
    ('BIOL405', 'Human Physiology', 3, 4, 1, 'BIOL220'),
    ('BIOL406', 'Research Methods in Biology', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('BIOL407', 'Advanced Cell Biology', 3, 4, 2, 'BIOL301'),
    ('BIOL408', 'Applied Microbiology', 3, 4, 2, 'BIOL202'),
    ('BIOL409', 'Molecular Medicine', 3, 4, 2, 'BIOL303'),
    ('BIOL410', 'Population Genetics', 3, 4, 2, 'BIOL310'),
    ('BIOL411', 'Bioethics', 3, 4, 2, NULL),
    ('BIOL412', 'Senior Research Project in Biology', 3, 4, 2, 'BIOL406');





  --BUS-ACC
    -- Year 1, Semester 1
    ('ACCT101', 'Financial Accounting', 3, 1, 1, NULL),
    ('BUS101', 'Introduction to Business', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ECON101', 'Principles of Microeconomics', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('SS101', 'Social Sciences Elective', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ACCT102', 'Managerial Accounting', 3, 1, 2, 'ACCT101'),
    ('ECON102', 'Principles of Macroeconomics', 3, 1, 2, 'ECON101'),
    ('BUS102', 'Business Ethics', 3, 1, 2, 'BUS101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('HUM101', 'Introduction to Humanities', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('ACCT110', 'Introduction to Tax Accounting', 3, 2, 1, 'ACCT101'),
    ('ACCT201', 'Intermediate Accounting I', 3, 2, 1, 'ACCT102'),
    ('BUS210', 'Business Law I', 3, 2, 1, 'BUS101'),
    ('FIN201', 'Principles of Finance', 3, 2, 1, 'BUS101'),
    ('STAT101', 'Introduction to Statistics', 3, 2, 1, 'MATH102'),
    ('CMSC101', 'Introduction to Computer Science', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('ACCT202', 'Intermediate Accounting II', 3, 2, 2, 'ACCT201'),
    ('ACCT210', 'Cost Accounting', 3, 2, 2, 'ACCT201'),
    ('FIN210', 'Financial Management', 3, 2, 2, 'FIN201'),
    ('BUS220', 'Business Law II', 3, 2, 2, 'BUS210'),
    ('STAT102', 'Regression Analysis', 3, 2, 2, 'STAT101'),
    ('TECH101', 'Technology and Society', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('ACCT220', 'Auditing I', 3, 3, 1, 'ACCT202'),
    ('ACCT301', 'Advanced Accounting', 3, 3, 1, 'ACCT202'),
    ('ACCT310', 'Auditing II', 3, 3, 1, 'ACCT220'),
    ('ACCT320', 'International Accounting', 3, 3, 1, 'ACCT301'),
    ('FIN310', 'Investments', 3, 3, 1, 'FIN210'),
    ('BUS230', 'Business Communication', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('ACCT302', 'Tax Accounting II', 3, 3, 2, 'ACCT210'),
    ('FIN320', 'Financial Markets and Institutions', 3, 3, 2, 'FIN201'),
    ('MKTG301', 'Marketing Management', 3, 3, 2, 'BUS101'),
    ('MGMT301', 'Organizational Behavior', 3, 3, 2, 'BUS101'),
    ('ENTR301', 'Entrepreneurship', 3, 3, 2, 'BUS101'),
    ('BUS240', 'Business Internship', 3, 3, 2, NULL);

    -- Year 4, Semester 1
    ('ACCT401', 'Advanced Financial Accounting', 3, 4, 1, 'ACCT301'),
    ('ACCT402', 'Forensic Accounting', 3, 4, 1, 'ACCT302'),
    ('ACCT403', 'Government and Non-Profit Accounting', 3, 4, 1, 'ACCT301'),
    ('FIN410', 'Advanced Corporate Finance', 3, 4, 1, 'FIN310'),
    ('BUS410', 'Strategic Management', 3, 4, 1, 'BUS101'),
    ('BUS400', 'Capstone Project in Business Accounting', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('ACCT404', 'Ethics in Accounting', 3, 4, 2, NULL),
    ('ACCT405', 'Advanced Auditing', 3, 4, 2, 'ACCT310'),
    ('ACCT406', 'Accounting Information Systems', 3, 4, 2, 'ACCT302'),
    ('FIN420', 'Financial Risk Management', 3, 4, 2, 'FIN310'),
    ('BUS420', 'Global Business Strategy', 3, 4, 2, 'BUS410'),
    ('BUS430', 'Leadership in Business', 3, 4, 2, NULL);





  --BUS-MGT
    -- Year 1, Semester 1
    ('BUS101', 'Introduction to Business', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ECON101', 'Principles of Microeconomics', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('PSYC101', 'Introduction to Psychology', 3, 1, 1, NULL),
    ('SS101', 'Social Sciences Elective', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('BUS102', 'Business Ethics', 3, 1, 2, 'BUS101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('ECON102', 'Principles of Macroeconomics', 3, 1, 2, 'ECON101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('HUM101', 'Introduction to Humanities', 3, 1, 2, NULL),
    ('CMSC101', 'Introduction to Computer Science', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('BUS201', 'Business Communication', 3, 2, 1, 'BUS102'),
    ('STAT201', 'Business Statistics', 3, 2, 1, 'MATH102'),
    ('MKTG201', 'Principles of Marketing', 3, 2, 1, 'BUS101'),
    ('MGMT201', 'Principles of Management', 3, 2, 1, 'BUS101'),
    ('FIN201', 'Principles of Finance', 3, 2, 1, 'BUS101'),
    ('BUS210', 'Business Law', 3, 2, 1, 'BUS101'),

    -- Year 2, Semester 2
    ('MGMT202', 'Organizational Behavior', 3, 2, 2, 'MGMT201'),
    ('BUS220', 'Human Resource Management', 3, 2, 2, 'MGMT201'),
    ('ENTR201', 'Entrepreneurship', 3, 2, 2, 'BUS101'),
    ('MKTG202', 'Consumer Behavior', 3, 2, 2, 'MKTG201'),
    ('BUS230', 'Operations Management', 3, 2, 2, 'BUS101'),
    ('BUS240', 'Project Management', 3, 2, 2, 'BUS101'),

    -- Year 3, Semester 1
    ('MGMT301', 'Leadership', 3, 3, 1, 'MGMT202'),
    ('BUS310', 'Strategic Management', 3, 3, 1, 'BUS220'),
    ('MKTG301', 'International Marketing', 3, 3, 1, 'MKTG201'),
    ('FIN310', 'Financial Management', 3, 3, 1, 'FIN201'),
    ('BUS320', 'Business Analytics', 3, 3, 1, 'STAT201'),
    ('BUS330', 'Ethical Decision Making in Business', 3, 3, 1, 'BUS102'),

    -- Year 3, Semester 2
    ('MGMT302', 'Change Management', 3, 3, 2, 'MGMT301'),
    ('BUS340', 'Global Business Strategy', 3, 3, 2, 'BUS310'),
    ('MKTG302', 'Digital Marketing', 3, 3, 2, 'MKTG201'),
    ('FIN320', 'Investments', 3, 3, 2, 'FIN310'),
    ('BUS350', 'Business Negotiation', 3, 3, 2, NULL),
    ('BUS360', 'Business Internship', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('MGMT401', 'Business Consulting', 3, 4, 1, 'MGMT302'),
    ('BUS410', 'Corporate Governance', 3, 4, 1, 'BUS310'),
    ('MKTG401', 'Marketing Analytics', 3, 4, 1, 'BUS320'),
    ('FIN410', 'Advanced Financial Management', 3, 4, 1, 'FIN320'),
    ('BUS420', 'Innovation Management', 3, 4, 1, 'ENTR201'),
    ('BUS400', 'Capstone Project in Business Management', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('MGMT402', 'Crisis Management', 3, 4, 2, 'MGMT401'),
    ('BUS430', 'Leadership in a Global Context', 3, 4, 2, 'MGMT301'),
    ('MKTG402', 'Brand Management', 3, 4, 2, 'MKTG301'),
    ('FIN420', 'Financial Risk Management', 3, 4, 2, 'FIN410'),
    ('BUS440', 'Social Responsibility in Business', 3, 4, 2, NULL),
    ('BUS450', 'Business Innovation Project', 3, 4, 2, 'BUS420');






  --BUS-MKT
    -- Year 1, Semester 1
    ('MKTG101', 'Introduction to Marketing', 3, 1, 1, NULL),
    ('BUS101', 'Introduction to Business', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ECON101', 'Principles of Microeconomics', 3, 1, 1, NULL),
    ('ENGL101', 'English Composition I', 3, 1, 1, NULL),
    ('SS101', 'Social Sciences Elective', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('MKTG102', 'Consumer Behavior', 3, 1, 2, 'MKTG101'),
    ('BUS102', 'Business Ethics', 3, 1, 2, 'BUS101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('ECON102', 'Principles of Macroeconomics', 3, 1, 2, 'ECON101'),
    ('ENGL102', 'English Composition II', 3, 1, 2, 'ENGL101'),
    ('HUM101', 'Introduction to Humanities', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('MKTG201', 'Marketing Research', 3, 2, 1, 'MKTG102'),
    ('STAT201', 'Business Statistics', 3, 2, 1, 'MATH102'),
    ('BUS201', 'Business Communication', 3, 2, 1, 'BUS102'),
    ('MKTG202', 'Digital Marketing', 3, 2, 1, 'MKTG101'),
    ('MGMT201', 'Principles of Management', 3, 2, 1, 'BUS101'),
    ('FIN201', 'Principles of Finance', 3, 2, 1, 'BUS101'),

    -- Year 2, Semester 2
    ('MKTG203', 'Marketing Strategy', 3, 2, 2, 'MKTG201'),
    ('BUS202', 'Negotiation and Persuasion', 3, 2, 2, 'BUS201'),
    ('ENTR201', 'Entrepreneurship', 3, 2, 2, 'BUS101'),
    ('MKTG204', 'Brand Management', 3, 2, 2, 'MKTG202'),
    ('MKTG205', 'Social Media Marketing', 3, 2, 2, 'MKTG202'),
    ('BUS210', 'Business Law', 3, 2, 2, 'BUS101'),

    -- Year 3, Semester 1
    ('MKTG301', 'International Marketing', 3, 3, 1, 'MKTG203'),
    ('MKTG302', 'Marketing Analytics', 3, 3, 1, 'STAT201'),
    ('BUS301', 'Leadership in Marketing', 3, 3, 1, 'MGMT201'),
    ('MKTG303', 'Retail Marketing', 3, 3, 1, 'MKTG204'),
    ('FIN301', 'Financial Management for Marketers', 3, 3, 1, 'FIN201'),
    ('BUS220', 'Human Resource Management', 3, 3, 1, 'MGMT201'),

    -- Year 3, Semester 2
    ('MKTG304', 'Marketing Communications', 3, 3, 2, 'MKTG301'),
    ('MKTG305', 'Product Management', 3, 3, 2, 'MKTG203'),
    ('MKTG306', 'Customer Relationship Management', 3, 3, 2, 'MKTG301'),
    ('MKTG307', 'Event Marketing', 3, 3, 2, 'MKTG202'),
    ('BUS302', 'Project Management', 3, 3, 2, 'BUS201'),
    ('BUS320', 'Business Analytics', 3, 3, 2, 'STAT201'),

    -- Year 4, Semester 1
    ('MKTG401', 'Strategic Marketing Management', 3, 4, 1, 'MKTG304'),
    ('MKTG402', 'Marketing Consulting', 3, 4, 1, 'MKTG305'),
    ('MKTG403', 'E-commerce Marketing', 3, 4, 1, 'MKTG202'),
    ('BUS410', 'Corporate Governance', 3, 4, 1, 'MGMT201'),
    ('MKTG404', 'Services Marketing', 3, 4, 1, 'MKTG301'),
    ('BUS400', 'Capstone Project in Business Marketing', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('MKTG405', 'Global Marketing', 3, 4, 2, 'MKTG401'),
    ('MKTG406', 'Marketing for Sustainability', 3, 4, 2, 'MKTG402'),
    ('MKTG407', 'Marketing Ethics and Law', 3, 4, 2, 'MKTG401'),
    ('MKTG408', 'Innovation in Marketing', 3, 4, 2, 'MKTG403'),
    ('BUS420', 'Innovation Management', 3, 4, 2, 'ENTR201'),
    ('BUS430', 'Leadership in a Global Context', 3, 4, 2, 'MGMT301');

  
  
  --ART-ENG
    -- Year 1, Semester 1
    ('ENGL101', 'Introduction to Composition', 3, 1, 1, NULL),
    ('WLIT101', 'Introduction to World Literature', 3, 1, 1, NULL), 
    ('ENGL110', 'Creative Writing I', 3, 1, 1, 'ENGL101'),
    ('ENGL120', 'British Literature I', 3, 1, 1, 'ENGL101'),
    ('ENGL130', 'American Literature I', 3, 1, 1, 'ENGL101'),
    ('ENGL140', 'Introduction to Linguistics', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ENGL102', 'Introduction to Literature', 3, 1, 2, 'ENGL101'),
    ('ENGL150', 'Public Speaking', 3, 1, 2, NULL),
    ('ENGL160', 'Creative Writing II', 3, 1, 2, 'ENGL110'),
    ('ENGL170', 'World Literature II', 3, 1, 2, 'WLIT101'),
    ('ENGL180', 'Literary Theory', 3, 1, 2, 'ENGL102'),
    ('ENGL190', 'Introduction to Drama', 3, 1, 2, 'ENGL102'),

    -- Year 2, Semester 1
    ('ENGL201', 'Intermediate Composition', 3, 2, 1, 'ENGL102'),
    ('ENGL210', 'Creative Writing III', 3, 2, 1, 'ENGL160'),
    ('ENGL220', 'British Literature II', 3, 2, 1, 'ENGL120'),
    ('ENGL230', 'American Literature II', 3, 2, 1, 'ENGL130'),
    ('ENGL240', 'Shakespeare', 3, 2, 1, 'ENGL102'),
    ('ENGL250', 'Genre Studies', 3, 2, 1, 'ENGL102'),

    -- Year 2, Semester 2
    ('ENGL202', 'Literary Analysis', 3, 2, 2, 'ENGL102'),
    ('ENGL260', 'Creative Writing IV', 3, 2, 2, 'ENGL210'),
    ('ENGL270', 'British Literature III', 3, 2, 2, 'ENGL220'),
    ('ENGL280', 'American Literature III', 3, 2, 2, 'ENGL230'),
    ('ENGL290', 'Modern Literature', 3, 2, 2, 'ENGL202'),
    ('ENGL300', 'Literature and Culture', 3, 2, 2, 'ENGL202'),

    -- Year 3, Semester 1
    ('ENGL301', 'Advanced Writing', 3, 3, 1, 'ENGL201'),
    ('ENGL310', 'Topics in Creative Writing', 3, 3, 1, 'ENGL210'),
    ('ENGL320', 'Topics in British Literature', 3, 3, 1, 'ENGL220'),
    ('ENGL330', 'Topics in American Literature', 3, 3, 1, 'ENGL230'),
    ('ENGL340', 'Film Studies', 3, 3, 1, 'ENGL202'),
    ('ENGL350', 'Independent Study', 3, 3, 1, 'ENGL301'),

    -- Year 3, Semester 2
    ('ENGL302', 'Major Author or Genre Study', 3, 3, 2, 'ENGL202'),
    ('ENGL360', 'Creative Writing Workshop', 3, 3, 2, 'ENGL310'),
    ('ENGL370', 'British Literature IV', 3, 3, 2, 'ENGL320'),
    ('ENGL380', 'American Literature IV', 3, 3, 2, 'ENGL330'),
    ('ENGL390', 'Contemporary Literature', 3, 3, 2, 'ENGL302'),
    ('ENGL400', 'Literature and Society', 3, 3, 2, 'ENGL302'),

    -- Year 4, Semester 1
    ('ENGL401', 'Advanced Topics in Literature', 3, 4, 1, 'ENGL302'),
    ('ENGL410', 'Creative Writing Capstone', 3, 4, 1, 'ENGL360'),
    ('ENGL420', 'British Literature V', 3, 4, 1, 'ENGL370'),
    ('ENGL430', 'American Literature V', 3, 4, 1, 'ENGL380'),
    ('ENGL440', 'Literary Criticism', 3, 4, 1, 'ENGL302'),
    ('ENGL450', 'Senior Seminar in English', 3, 4, 1, 'ENGL401'),

    -- Year 4, Semester 2
    ('ENGL402', 'Special Topics in Literature', 3, 4, 2, 'ENGL401'),
    ('ENGL460', 'Advanced Creative Writing Workshop', 3, 4, 2, 'ENGL410'),
    ('ENGL470', 'Contemporary British Literature', 3, 4, 2, 'ENGL420'),
    ('ENGL480', 'Contemporary American Literature', 3, 4, 2, 'ENGL430'),
    ('ENGL490', 'Literature in Translation', 3, 4, 2, 'ENGL402'),
    ('ENGL499', 'Senior Project in English', 3, 4, 2, 'ENGL450');



  --ART-ARB
    -- Year 1, Semester 1
    ('ARAB101', 'Introduction to Arabic Grammar', 3, 1, 1, NULL),
    ('ARAB102', 'Arabic Writing and Reading Skills', 3, 1, 1, NULL),
    ('ARAB103', 'Introduction to Arabic Literature', 3, 1, 1, NULL),
    ('LING101', 'Introduction to Linguistics', 3, 1, 1, NULL),
    ('HIST101', 'Introduction to Arabic History and Culture', 3, 1, 1, NULL),
    ('ARAB104', 'Arabic Conversation', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ARAB105', 'Intermediate Arabic Grammar', 3, 1, 2, 'ARAB101'),
    ('ARAB106', 'Arabic Composition', 3, 1, 2, 'ARAB102'),
    ('ARAB107', 'Introduction to Classical Arabic Literature', 3, 1, 2, 'ARAB103'),
    ('ARAB108', 'Arabic Phonetics and Phonology', 3, 1, 2, 'LING101'),
    ('HIST102', 'History of Arabic Civilization', 3, 1, 2, 'HIST101'),
    ('ARAB109', 'Arabic Media Studies', 3, 1, 2, 'ARAB104'),

    -- Year 2, Semester 1
    ('ARAB201', 'Advanced Arabic Grammar', 3, 2, 1, 'ARAB105'),
    ('ARAB202', 'Arabic Stylistics and Rhetoric', 3, 2, 1, 'ARAB106'),
    ('ARAB203', 'Arabic Poetry', 3, 2, 1, 'ARAB107'),
    ('ARAB204', 'Arabic Morphology', 3, 2, 1, 'ARAB108'),
    ('ARAB205', 'Arabic Calligraphy', 3, 2, 1, NULL),
    ('ARAB206', 'Arabic Dialects', 3, 2, 1, 'ARAB109'),

    -- Year 2, Semester 2
    ('ARAB207', 'Arabic Prose', 3, 2, 2, 'ARAB201'),
    ('ARAB208', 'Arabic Literature of the Modern Period', 3, 2, 2, 'ARAB202'),
    ('ARAB209', 'Arabic Linguistic Studies', 3, 2, 2, 'ARAB203'),
    ('ARAB210', 'Arabic Sociolinguistics', 3, 2, 2, 'ARAB204'),
    ('ARAB211', 'Arabic Media and Communication', 3, 2, 2, 'ARAB109'),
    ('ARAB212', 'Arabic Language Teaching Methods', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('ARAB301', 'Arabic Literary Criticism', 3, 3, 1, 'ARAB207'),
    ('ARAB302', 'Arabic Syntax', 3, 3, 1, 'ARAB208'),
    ('ARAB303', 'Arabic Lexicography', 3, 3, 1, 'ARAB209'),
    ('ARAB304', 'Modern Arabic Novel', 3, 3, 1, 'ARAB210'),
    ('ARAB305', 'Arabic Culture and Civilization', 3, 3, 1, 'ARAB211'),
    ('ARAB306', 'Arabic Journalism', 3, 3, 1, 'ARAB212'),

    -- Year 3, Semester 2
    ('ARAB307', 'Arabic Drama', 3, 3, 2, 'ARAB301'),
    ('ARAB308', 'Arabic Linguistic Thought', 3, 3, 2, 'ARAB302'),
    ('ARAB309', 'Arabic Pragmatics', 3, 3, 2, 'ARAB303'),
    ('ARAB310', 'Arabic Paleography', 3, 3, 2, 'ARAB304'),
    ('ARAB311', 'Arabic Media and Society', 3, 3, 2, 'ARAB305'),
    ('ARAB312', 'Arabic Language Planning', 3, 3, 2, 'ARAB306'),

    -- Year 4, Semester 1
    ('ARAB401', 'Arabic Historical Linguistics', 3, 4, 1, 'ARAB307'),
    ('ARAB402', 'Arabic Literary Theory', 3, 4, 1, 'ARAB308'),
    ('ARAB403', 'Arabic Semantics', 3, 4, 1, 'ARAB309'),
    ('ARAB404', 'Arabic Literature of Andalus', 3, 4, 1, 'ARAB310'),
    ('ARAB405', 'Arabic Language and Gender', 3, 4, 1, 'ARAB311'),
    ('ARAB406', 'Arabic Language and Identity', 3, 4, 1, 'ARAB312'),

    -- Year 4, Semester 2
    ('ARAB407', 'Arabic Linguistic Variation', 3, 4, 2, 'ARAB401'),
    ('ARAB408', 'Arabic Literary Translation', 3, 4, 2, 'ARAB402'),
    ('ARAB409', 'Arabic Sociolinguistic Studies', 3, 4, 2, 'ARAB403'),
    ('ARAB410', 'Arabic Literature and Film', 3, 4, 2, 'ARAB404'),
    ('ARAB411', 'Arabic Language and Media Discourse', 3, 4, 2, 'ARAB405'),
    ('ARAB412', 'Arabic Language Policy and Planning', 3, 4, 2, 'ARAB406');


  --ART-LANG
    -- Year 1, Semester 1
    ('MODL101', 'Introduction to Modern Languages', 3, 1, 1, NULL),
    ('MODL102', 'Introduction to Literary Theory', 3, 1, 1, NULL),
    ('FREN101', 'French Language I', 3, 1, 1, NULL),
    ('SPAN101', 'Spanish Language I', 3, 1, 1, NULL),
    ('GERM101', 'German Language I', 3, 1, 1, NULL),
    ('MODL103', 'Introduction to European Literature', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('MODL104', 'Introduction to Translation Studies', 3, 1, 2, NULL),
    ('FREN102', 'French Language II', 3, 1, 2, 'FREN101'),
    ('SPAN102', 'Spanish Language II', 3, 1, 2, 'SPAN101'),
    ('GERM102', 'German Language II', 3, 1, 2, 'GERM101'),
    ('MODL105', 'Introduction to Comparative Literature', 3, 1, 2, 'MODL103'),
    ('MODL106', 'Introduction to Linguistic Typology', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('MODL201', 'Advanced Modern Languages', 3, 2, 1, 'MODL101'),
    ('FREN201', 'French Language III', 3, 2, 1, 'FREN102'),
    ('SPAN201', 'Spanish Language III', 3, 2, 1, 'SPAN102'),
    ('GERM201', 'German Language III', 3, 2, 1, 'GERM102'),
    ('MODL202', 'Modern Literature in Translation', 3, 2, 1, 'MODL104'),
    ('MODL203', 'Topics in European Literature', 3, 2, 1, 'MODL105'),

    -- Year 2, Semester 2
    ('MODL204', 'Advanced Translation Studies', 3, 2, 2, 'MODL104'),
    ('FREN202', 'French Language IV', 3, 2, 2, 'FREN201'),
    ('SPAN202', 'Spanish Language IV', 3, 2, 2, 'SPAN201'),
    ('GERM202', 'German Language IV', 3, 2, 2, 'GERM201'),
    ('MODL205', 'Comparative Literary Analysis', 3, 2, 2, 'MODL105'),
    ('MODL206', 'Semiotics and Discourse Analysis', 3, 2, 2, 'MODL106'),

    -- Year 3, Semester 1
    ('MODL301', 'Modern Language Proficiency', 3, 3, 1, 'MODL201'),
    ('FREN301', 'French Language V', 3, 3, 1, 'FREN202'),
    ('SPAN301', 'Spanish Language V', 3, 3, 1, 'SPAN202'),
    ('GERM301', 'German Language V', 3, 3, 1, 'GERM202'),
    ('MODL302', 'Literary Criticism', 3, 3, 1, 'MODL202'),
    ('MODL303', 'Literary Genres', 3, 3, 1, 'MODL203'),

    -- Year 3, Semester 2
    ('MODL304', 'Advanced Semantics', 3, 3, 2, 'MODL206'),
    ('FREN302', 'French Language VI', 3, 3, 2, 'FREN301'),
    ('SPAN302', 'Spanish Language VI', 3, 3, 2, 'SPAN301'),
    ('GERM302', 'German Language VI', 3, 3, 2, 'GERM301'),
    ('MODL305', 'World Literature in Translation', 3, 3, 2, 'MODL202'),
    ('MODL306', 'Modern Language Pedagogy', 3, 3, 2, 'MODL301'),

    -- Year 4, Semester 1
    ('MODL401', 'Translation Workshop', 3, 4, 1, 'MODL204'),
    ('FREN401', 'French Language VII', 3, 4, 1, 'FREN302'),
    ('SPAN401', 'Spanish Language VII', 3, 4, 1, 'SPAN302'),
    ('GERM401', 'German Language VII', 3, 4, 1, 'GERM302'),
    ('MODL402', 'Literary Translation', 3, 4, 1, 'MODL304'),
    ('MODL403', 'Modern Language Dissertation', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('MODL404', 'Interpreting Skills', 3, 4, 2, 'MODL204'),
    ('FREN402', 'French Language VIII', 3, 4, 2, 'FREN401'),
    ('SPAN402', 'Spanish Language VIII', 3, 4, 2, 'SPAN401'),
    ('GERM402', 'German Language VIII', 3, 4, 2, 'GERM401'),
    ('MODL405', 'Contemporary Literary Theory', 3, 4, 2, 'MODL302'),
    ('MODL406', 'Modern Language Internship', 3, 4, 2, NULL);



  --ART-HIST
    -- Year 1, Semester 1
    ('HIST101', 'Introduction to World History', 3, 1, 1, NULL),
    ('HIST102', 'Ancient Civilizations', 3, 1, 1, NULL),
    ('HIST103', 'Historical Methodology', 3, 1, 1, NULL),
    ('HIST104', 'History of Art and Architecture', 3, 1, 1, NULL),
    ('HIST105', 'Foundations of Modern Politics', 3, 1, 1, NULL),
    ('HIST106', 'Introduction to Archaeology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('HIST107', 'Medieval History', 3, 1, 2, 'HIST101'),
    ('HIST108', 'Early Modern History', 3, 1, 2, 'HIST101'),
    ('HIST109', 'Introduction to Social History', 3, 1, 2, NULL),
    ('HIST110', 'History of Science and Technology', 3, 1, 2, NULL),
    ('HIST111', 'Introduction to Economic History', 3, 1, 2, NULL),
    ('HIST112', 'Colonialism and Imperialism', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('HIST201', 'Modern European History', 3, 2, 1, 'HIST107'),
    ('HIST202', 'History of the Middle East', 3, 2, 1, NULL),
    ('HIST203', 'Renaissance and Reformation', 3, 2, 1, 'HIST108'),
    ('HIST204', 'History of Africa', 3, 2, 1, NULL),
    ('HIST205', 'History of East Asia', 3, 2, 1, NULL),
    ('HIST206', 'History of Latin America', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('HIST207', 'Modern American History', 3, 2, 2, 'HIST201'),
    ('HIST208', 'History of South Asia', 3, 2, 2, NULL),
    ('HIST209', 'The World Wars', 3, 2, 2, 'HIST108'),
    ('HIST210', 'History of Oceania', 3, 2, 2, NULL),
    ('HIST211', 'History of Gender and Sexuality', 3, 2, 2, 'HIST109'),
    ('HIST212', 'History of Ideas and Intellectual Movements', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('HIST301', 'Historiography', 3, 3, 1, 'HIST203'),
    ('HIST302', 'Contemporary World History', 3, 3, 1, 'HIST207'),
    ('HIST303', 'Globalization and Its Historical Contexts', 3, 3, 1, NULL),
    ('HIST304', 'History of Revolutions', 3, 3, 1, NULL),
    ('HIST305', 'History of Migration', 3, 3, 1, NULL),
    ('HIST306', 'History of Religion', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('HIST307', 'History of Political Thought', 3, 3, 2, 'HIST302'),
    ('HIST308', 'History of Indigenous Peoples', 3, 3, 2, NULL),
    ('HIST309', 'History of Environmental Movements', 3, 3, 2, NULL),
    ('HIST310', 'History of Human Rights', 3, 3, 2, NULL),
    ('HIST311', 'History of Diplomacy and International Relations', 3, 3, 2, NULL),
    ('HIST312', 'History of Warfare', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('HIST401', 'Research Seminar in History', 3, 4, 1, 'HIST301'),
    ('HIST402', 'Capstone Project in History', 3, 4, 1, NULL),
    ('HIST403', 'History Internship', 3, 4, 1, NULL),
    ('HIST404', 'History of Memory and Commemoration', 3, 4, 1, NULL),
    ('HIST405', 'History of Crime and Punishment', 3, 4, 1, NULL),
    ('HIST406', 'History of Medicine and Health', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('HIST407', 'Advanced Historical Analysis', 3, 4, 2, 'HIST401'),
    ('HIST408', 'History and Public Policy', 3, 4, 2, NULL),
    ('HIST409', 'History and Literature', 3, 4, 2, NULL),
    ('HIST410', 'History and Film', 3, 4, 2, NULL),
    ('HIST411', 'History and Memory Studies', 3, 4, 2, NULL),
    ('HIST412', 'Selected Topics in History', 3, 4, 2, NULL);





  --EDU-PSY
    -- Year 1, Semester 1
    ('PSY101', 'Introduction to Psychology', 3, 1, 1, NULL),
    ('EPSY101', 'Introduction to Educational Psychology', 3, 1, 1, 'PSY101'),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('BIOL101', 'Introduction to Biology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('EPSY102', 'Human Development and Learning', 3, 1, 2, 'EPSY101'),
    ('EPSY110', 'Motivation in Education', 3, 1, 2, 'EPSY102'),
    ('ENGL101', 'Introduction to Composition', 3, 1, 2, NULL),
    ('HIST101', 'Introduction to World History', 3, 1, 2, NULL),
    ('GEOL101', 'Introduction to Geology', 3, 1, 2, NULL),
    ('PSY102', 'Abnormal Psychology', 3, 1, 2, 'PSY101'),

    -- Year 2, Semester 1
    ('EPSY201', 'Learning Theories and Instruction', 3, 2, 1, 'EPSY102'),
    ('STAT201', 'Introduction to Statistics', 3, 2, 1, NULL),
    ('EPSY220', 'Special Needs Education', 3, 2, 1, 'EPSY102'),
    ('PHIL201', 'Introduction to Ethics', 3, 2, 1, NULL),
    ('SOC101', 'Introduction to Sociology', 3, 2, 1, NULL),
    ('PSY201', 'Cognitive Psychology', 3, 2, 1, 'PSY101'),

    -- Year 2, Semester 2
    ('EPSY202', 'Assessment in Education', 3, 2, 2, 'EPSY101'),
    ('EPSY210', 'Classroom Management', 3, 2, 2, 'EPSY201'),
    ('EPSY230', 'Educational Technology and Learning', 3, 2, 2, 'EPSY201'),
    ('ANTH202', 'Cultural Anthropology', 3, 2, 2, NULL),
    ('POL101', 'Introduction to Political Science', 3, 2, 2, NULL),
    ('PSY202', 'Social Psychology', 3, 2, 2, 'PSY101'),

    -- Year 3, Semester 1
    ('EPSY301', 'Psychological Foundations of Reading Instruction', 3, 3, 1, 'EPSY201'),
    ('EPSY310', 'Positive Psychology in Education', 3, 3, 1, 'EPSY102'),
    ('EPSY320', 'Literacy Development', 3, 3, 1, 'EPSY301'),
    ('ECON101', 'Principles of Microeconomics', 3, 3, 1, NULL),
    ('BUS101', 'Introduction to Business', 3, 3, 1, NULL),
    ('PSY301', 'Developmental Psychology', 3, 3, 1, 'PSY101'),

    -- Year 3, Semester 2
    ('EPSY302', 'Advanced Educational Psychology', 3, 3, 2, 'EPSY202'),
    ('EPSY330', 'Seminar in Educational Psychology', 3, 3, 1, NULL),
    ('EPSY340', 'Child and Adolescent Development', 3, 3, 2, 'PSY301'),
    ('HIST301', 'Historiography', 3, 3, 2, NULL),
    ('ENGL201', 'Intermediate Composition', 3, 3, 2, 'ENGL101'),
    ('PSY302', 'Health Psychology', 3, 3, 2, 'PSY202'),

    -- Year 4, Semester 1
    ('EPSY401', 'Research Methods in Educational Psychology', 3, 4, 1, 'EPSY302'),
    ('EPSY402', 'Advanced Topics in Educational Psychology', 3, 4, 1, 'EPSY302'),
    ('EPSY410', 'Educational Leadership and Administration', 3, 4, 1, 'EPSY310'),
    ('PHYS102', 'Physics II', 3, 4, 1, 'PHYS101'),
    ('CHEM102', 'General Chemistry II', 3, 4, 1, 'CHEM101'),
    ('PSY401', 'Psychological Testing and Measurement', 3, 4, 1, 'PSY201'),

    -- Year 4, Semester 2
    ('EPSY403', 'Internship in Educational Psychology', 3, 4, 2, 'EPSY401'),
    ('EPSY404', 'Capstone Project in Educational Psychology', 3, 4, 2, 'EPSY402'),
    ('EPSY420', 'Advanced Educational Technology', 3, 4, 2, 'EPSY230'),
    ('EPSY430', 'Program Evaluation in Education', 3, 4, 2, 'EPSY401'),
    ('PSY402', 'Counseling Psychology', 3, 4, 2, 'PSY202'),
    ('EPSY450', 'Seminar in Educational Policy', 3, 4, 2, NULL);




  --EDU-CURR
    -- Year 1, Semester 1
    ('EDUC101', 'Introduction to Education', 3, 1, 1, NULL),
    ('PSY101', 'Introduction to Psychology', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('BIOL101', 'Introduction to Biology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('EDUC102', 'History of Education', 3, 1, 2, 'EDUC101'),
    ('EPSY101', 'Introduction to Educational Psychology', 3, 1, 2, 'PSY101'),
    ('ENGL101', 'Introduction to Composition', 3, 1, 2, NULL),
    ('HIST101', 'Introduction to World History', 3, 1, 2, NULL),
    ('GEOL101', 'Introduction to Geology', 3, 1, 2, NULL),
    ('PSY102', 'Abnormal Psychology', 3, 1, 2, 'PSY101'),

    -- Year 2, Semester 1
    ('EDUC201', 'Curriculum Development', 3, 2, 1, 'EDUC102'),
    ('STAT201', 'Introduction to Statistics', 3, 2, 1, NULL),
    ('EPSY201', 'Learning Theories and Instruction', 3, 2, 1, 'EPSY101'),
    ('PHIL201', 'Introduction to Ethics', 3, 2, 1, NULL),
    ('SOC101', 'Introduction to Sociology', 3, 2, 1, NULL),
    ('PSY201', 'Cognitive Psychology', 3, 2, 1, 'PSY101'),

    -- Year 2, Semester 2
    ('EDUC202', 'Assessment and Evaluation in Education', 3, 2, 2, 'EDUC201'),
    ('EPSY202', 'Assessment in Education', 3, 2, 2, 'EPSY101'),
    ('EPSY210', 'Classroom Management', 3, 2, 2, 'EPSY201'),
    ('EPSY230', 'Educational Technology and Learning', 3, 2, 2, 'EPSY201'),
    ('ANTH202', 'Cultural Anthropology', 3, 2, 2, NULL),
    ('POL101', 'Introduction to Political Science', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('EDUC301', 'Educational Leadership', 3, 3, 1, 'EDUC202'),
    ('EPSY301', 'Psychological Foundations of Reading Instruction', 3, 3, 1, 'EPSY201'),
    ('EPSY310', 'Positive Psychology in Education', 3, 3, 1, 'EPSY102'),
    ('EPSY320', 'Literacy Development', 3, 3, 1, 'EPSY301'),
    ('ECON101', 'Principles of Microeconomics', 3, 3, 1, NULL),
    ('BUS101', 'Introduction to Business', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('EDUC302', 'Educational Assessment and Evaluation', 3, 3, 2, 'EDUC202'),
    ('EPSY302', 'Advanced Educational Psychology', 3, 3, 2, 'EPSY202'),
    ('EPSY330', 'Seminar in Educational Psychology', 3, 3, 2, NULL),
    ('EPSY340', 'Child and Adolescent Development', 3, 3, 2, 'PSY301'),
    ('HIST301', 'Historiography', 3, 3, 2, NULL),
    ('ENGL201', 'Intermediate Composition', 3, 3, 2, 'ENGL101'),

    -- Year 4, Semester 1
    ('EDUC401', 'Research Methods in Education', 3, 4, 1, 'EDUC302'),
    ('EPSY401', 'Research Methods in Educational Psychology', 3, 4, 1, 'EPSY302'),
    ('EDUC410', 'Educational Policies and Planning', 3, 4, 1, 'EDUC301'),
    ('PHYS102', 'Physics II', 3, 4, 1, 'PHYS101'),
    ('CHEM102', 'General Chemistry II', 3, 4, 1, 'CHEM101'),
    ('PSY401', 'Psychological Testing and Measurement', 3, 4, 1, 'PSY201'),

    -- Year 4, Semester 2
    ('EDUC402', 'Capstone Project in Education', 3, 4, 2, 'EDUC401'),
    ('EPSY402', 'Advanced Topics in Educational Psychology', 3, 4, 2, 'EPSY302'),
    ('EPSY403', 'Internship in Educational Psychology', 3, 4, 2, 'EPSY401'),
    ('EPSY420', 'Advanced Educational Technology', 3, 4, 2, 'EPSY230'),
    ('EPSY430', 'Program Evaluation in Education', 3, 4, 2, 'EPSY401'),
    ('PSY402', 'Counseling Psychology', 3, 4, 2, 'PSY202');




  --EDU-LEAD
    -- Year 1, Semester 1
    ('EDUL101', 'Introduction to Education Leadership', 3, 1, 1, NULL),
    ('PSY101', 'Introduction to Psychology', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('PHYS101', 'Physics I', 3, 1, 1, NULL),
    ('BIOL101', 'Introduction to Biology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('EDUL102', 'Foundations of Educational Leadership', 3, 1, 2, 'EDUL101'),
    ('EPSY101', 'Introduction to Educational Psychology', 3, 1, 2, 'PSY101'),
    ('ENGL101', 'Introduction to Composition', 3, 1, 2, NULL),
    ('HIST101', 'Introduction to World History', 3, 1, 2, NULL),
    ('GEOL101', 'Introduction to Geology', 3, 1, 2, NULL),
    ('PSY102', 'Abnormal Psychology', 3, 1, 2, 'PSY101'),

    -- Year 2, Semester 1
    ('EDUL201', 'Organizational Behavior in Education', 3, 2, 1, 'EDUL102'),
    ('STAT201', 'Introduction to Statistics', 3, 2, 1, NULL),
    ('EPSY201', 'Learning Theories and Instruction', 3, 2, 1, 'EPSY101'),
    ('PHIL201', 'Introduction to Ethics', 3, 2, 1, NULL),
    ('SOC101', 'Introduction to Sociology', 3, 2, 1, NULL),
    ('PSY201', 'Cognitive Psychology', 3, 2, 1, 'PSY101'),

    -- Year 2, Semester 2
    ('EDUL202', 'Leadership in Diverse Educational Settings', 3, 2, 2, 'EDUL201'),
    ('EPSY202', 'Assessment in Education', 3, 2, 2, 'EPSY101'),
    ('EPSY210', 'Classroom Management', 3, 2, 2, 'EPSY201'),
    ('EPSY230', 'Educational Technology and Learning', 3, 2, 2, 'EPSY201'),
    ('ANTH202', 'Cultural Anthropology', 3, 2, 2, NULL),
    ('POL101', 'Introduction to Political Science', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('EDUL301', 'Educational Leadership and Policy Analysis', 3, 3, 1, 'EDUL202'),
    ('EPSY301', 'Psychological Foundations of Reading Instruction', 3, 3, 1, 'EPSY201'),
    ('EPSY310', 'Positive Psychology in Education', 3, 3, 1, 'EPSY102'),
    ('EPSY320', 'Literacy Development', 3, 3, 1, 'EPSY301'),
    ('ECON101', 'Principles of Microeconomics', 3, 3, 1, NULL),
    ('BUS101', 'Introduction to Business', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('EDUL302', 'Educational Leadership in Practice', 3, 3, 2, 'EDUL301'),
    ('EPSY302', 'Advanced Educational Psychology', 3, 3, 2, 'EPSY202'),
    ('EPSY330', 'Seminar in Educational Psychology', 3, 3, 2, NULL),
    ('EPSY340', 'Child and Adolescent Development', 3, 3, 2, 'PSY301'),
    ('HIST301', 'Historiography', 3, 3, 2, NULL),
    ('ENGL201', 'Intermediate Composition', 3, 3, 2, 'ENGL101'),

    -- Year 4, Semester 1
    ('EDUL401', 'Research Methods in Education Leadership', 3, 4, 1, 'EDUL302'),
    ('EPSY401', 'Research Methods in Educational Psychology', 3, 4, 1, 'EPSY302'),
    ('EDUL410', 'Educational Policies and Planning', 3, 4, 1, 'EDUL301'),
    ('PHYS102', 'Physics II', 3, 4, 1, 'PHYS101'),
    ('CHEM102', 'General Chemistry II', 3, 4, 1, 'CHEM101'),
    ('PSY401', 'Psychological Testing and Measurement', 3, 4, 1, 'PSY201'),

    -- Year 4, Semester 2
    ('EDUL402', 'Capstone Project in Education Leadership', 3, 4, 2, 'EDUL401'),
    ('EPSY402', 'Advanced Topics in Educational Psychology', 3, 4, 2, 'EPSY302'),
    ('EPSY403', 'Internship in Educational Psychology', 3, 4, 2, 'EPSY401'),
    ('EPSY420', 'Advanced Educational Technology', 3, 4, 2, 'EPSY230'),
    ('EPSY430', 'Program Evaluation in Education', 3, 4, 2, 'EPSY401'),
    ('PSY402', 'Counseling Psychology', 3, 4, 2, 'PSY202');




  --LAW-CIV
    -- Year 1, Semester 1
    ('LAW101', 'Introduction to Legal Studies', 3, 1, 1, NULL),
    ('LAW102', 'Introduction to Civil Law', 3, 1, 1, 'LAW101'),
    ('PHIL101', 'Introduction to Philosophy of Law', 3, 1, 1, NULL),
    ('ENG101', 'Legal Writing and Research', 3, 1, 1, NULL),
    ('HIST101', 'Legal History', 3, 1, 1, NULL),
    ('MATH101', 'Logic and Reasoning', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('LAW103', 'Contracts Law', 3, 1, 2, 'LAW102'),
    ('LAW104', 'Torts Law', 3, 1, 2, 'LAW102'),
    ('LAW105', 'Property Law', 3, 1, 2, 'LAW102'),
    ('LAW106', 'Constitutional Law', 3, 1, 2, 'LAW102'),
    ('LAW107', 'Legal Ethics', 3, 1, 2, 'LAW102'),
    ('LAW108', 'Legal Research Methods', 3, 1, 2, 'ENG101'),

    -- Year 2, Semester 1
    ('LAW201', 'Civil Procedure', 3, 2, 1, 'LAW103'),
    ('LAW202', 'Family Law', 3, 2, 1, 'LAW104'),
    ('LAW203', 'Succession Law', 3, 2, 1, 'LAW105'),
    ('LAW204', 'Administrative Law', 3, 2, 1, 'LAW106'),
    ('LAW205', 'Contract Drafting', 3, 2, 1, 'LAW103'),
    ('LAW206', 'Alternative Dispute Resolution', 3, 2, 1, 'LAW104'),

    -- Year 2, Semester 2
    ('LAW207', 'Evidence Law', 3, 2, 2, 'LAW201'),
    ('LAW208', 'Bankruptcy Law', 3, 2, 2, 'LAW203'),
    ('LAW209', 'Real Estate Law', 3, 2, 2, 'LAW202'),
    ('LAW210', 'Intellectual Property Law', 3, 2, 2, 'LAW204'),
    ('LAW211', 'Environmental Law', 3, 2, 2, 'LAW206'),
    ('LAW212', 'Clinical Legal Education', 3, 2, 2, 'LAW203'),

    -- Year 3, Semester 1
    ('LAW301', 'Advanced Civil Procedure', 3, 3, 1, 'LAW201'),
    ('LAW302', 'International Private Law', 3, 3, 1, 'LAW207'),
    ('LAW303', 'Labor Law', 3, 3, 1, 'LAW202'),
    ('LAW304', 'Insurance Law', 3, 3, 1, 'LAW208'),
    ('LAW305', 'Corporate Law', 3, 3, 1, 'LAW204'),
    ('LAW306', 'Legal Clinic: Civil Law', 3, 3, 1, 'LAW212'),

    -- Year 3, Semester 2
    ('LAW307', 'Advanced Contracts Law', 3, 3, 2, 'LAW203'),
    ('LAW308', 'Advanced Torts Law', 3, 3, 2, 'LAW204'),
    ('LAW309', 'Advanced Property Law', 3, 3, 2, 'LAW205'),
    ('LAW310', 'Consumer Protection Law', 3, 3, 2, 'LAW206'),
    ('LAW311', 'Legal Writing: Contracts', 3, 3, 2, 'LAW205'),
    ('LAW312', 'Legal Writing: Torts', 3, 3, 2, 'LAW206'),

    -- Year 4, Semester 1
    ('LAW401', 'Legal Internship: Civil Law', 3, 4, 1, 'LAW306'),
    ('LAW402', 'Seminar in Civil Law', 3, 4, 1, 'LAW307'),
    ('LAW403', 'Jurisprudence', 3, 4, 1, 'PHIL101'),
    ('LAW404', 'Legal Drafting: Contracts', 3, 4, 1, 'LAW311'),
    ('LAW405', 'Legal Drafting: Property Documents', 3, 4, 1, 'LAW309'),
    ('LAW406', 'Legal Drafting: Legal Memoranda', 3, 4, 1, 'LAW310'),

    -- Year 4, Semester 2
    ('LAW407', 'Thesis in Civil Law', 3, 4, 2, NULL),
    ('LAW408', 'Special Topics in Civil Law', 3, 4, 2, NULL),
    ('LAW409', 'Legal Practice: Civil Litigation', 3, 4, 2, 'LAW306'),
    ('LAW410', 'Legal Practice: Real Estate Transactions', 3, 4, 2, 'LAW209'),
    ('LAW411', 'Legal Practice: Corporate Contracts', 3, 4, 2, 'LAW305'),
    ('LAW412', 'Legal Practice: Intellectual Property', 3, 4, 2, 'LAW210');




  --LAW-INT
    -- Year 1, Semester 1
    ('LAW101', 'Introduction to Legal Studies', 3, 1, 1, NULL),
    ('LAW102', 'Introduction to International Law', 3, 1, 1, 'LAW101'),
    ('PHIL101', 'Introduction to Philosophy of Law', 3, 1, 1, NULL),
    ('ENG101', 'Legal Writing and Research', 3, 1, 1, NULL),
    ('HIST101', 'Legal History', 3, 1, 1, NULL),
    ('MATH101', 'Logic and Reasoning', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('LAW103', 'Public International Law', 3, 1, 2, 'LAW102'),
    ('LAW104', 'Private International Law', 3, 1, 2, 'LAW102'),
    ('LAW105', 'International Human Rights Law', 3, 1, 2, 'LAW102'),
    ('LAW106', 'International Trade Law', 3, 1, 2, 'LAW102'),
    ('LAW107', 'International Criminal Law', 3, 1, 2, 'LAW102'),
    ('LAW108', 'Legal Research Methods', 3, 1, 2, 'ENG101'),

    -- Year 2, Semester 1
    ('LAW201', 'International Environmental Law', 3, 2, 1, 'LAW103'),
    ('LAW202', 'International Organizations Law', 3, 2, 1, 'LAW104'),
    ('LAW203', 'Diplomatic Law', 3, 2, 1, 'LAW105'),
    ('LAW204', 'Law of Armed Conflict', 3, 2, 1, 'LAW106'),
    ('LAW205', 'International Investment Law', 3, 2, 1, 'LAW103'),
    ('LAW206', 'Legal Issues in Global Health', 3, 2, 1, 'LAW104'),

    -- Year 2, Semester 2
    ('LAW207', 'Law of the Sea', 3, 2, 2, 'LAW201'),
    ('LAW208', 'International Criminal Justice', 3, 2, 2, 'LAW202'),
    ('LAW209', 'International Humanitarian Law', 3, 2, 2, 'LAW203'),
    ('LAW210', 'International Investment Disputes', 3, 2, 2, 'LAW204'),
    ('LAW211', 'International Commercial Arbitration', 3, 2, 2, 'LAW206'),
    ('LAW212', 'Legal Issues in Cybersecurity', 3, 2, 2, 'LAW203'),

    -- Year 3, Semester 1
    ('LAW301', 'International Intellectual Property Law', 3, 3, 1, 'LAW201'),
    ('LAW302', 'International Tax Law', 3, 3, 1, 'LAW207'),
    ('LAW303', 'International Refugee Law', 3, 3, 1, 'LAW202'),
    ('LAW304', 'International Business Transactions', 3, 3, 1, 'LAW208'),
    ('LAW305', 'Space Law', 3, 3, 1, 'LAW206'),
    ('LAW306', 'Legal Clinic: International Law', 3, 3, 1, 'LAW212'),

    -- Year 3, Semester 2
    ('LAW307', 'Humanitarian Intervention Law', 3, 3, 2, 'LAW203'),
    ('LAW308', 'International Economic Law', 3, 3, 2, 'LAW204'),
    ('LAW309', 'International Cyber Law', 3, 3, 2, 'LAW212'),
    ('LAW310', 'International Moot Court Competition', 3, 3, 2, 'LAW209'),
    ('LAW311', 'International Development Law', 3, 3, 2, 'LAW205'),
    ('LAW312', 'Legal Issues in International Business', 3, 3, 2, 'LAW211'),

    -- Year 4, Semester 1
    ('LAW401', 'Legal Internship: International Law', 3, 4, 1, 'LAW306'),
    ('LAW402', 'Seminar in International Law', 3, 4, 1, 'LAW307'),
    ('LAW403', 'Comparative Law', 3, 4, 1, NULL),
    ('LAW404', 'International Negotiation and Diplomacy', 3, 4, 1, 'LAW212'),
    ('LAW405', 'International Legal Ethics', 3, 4, 1, 'LAW208'),
    ('LAW406', 'International Human Rights Advocacy', 3, 4, 1, 'LAW202'),

    -- Year 4, Semester 2
    ('LAW407', 'Thesis in International Law', 3, 4, 2, NULL),
    ('LAW408', 'Special Topics in International Law', 3, 4, 2, NULL),
    ('LAW409', 'Legal Practice: International Litigation', 3, 4, 2, 'LAW306'),
    ('LAW410', 'Legal Practice: International Business Transactions', 3, 4, 2, 'LAW311'),
    ('LAW411', 'Legal Practice: Human Rights Advocacy', 3, 4, 2, 'LAW406'),
    ('LAW412', 'Legal Practice: International Arbitration', 3, 4, 2, 'LAW211');





  --MED-MED
    -- Year 1, Semester 1
    ('MED101', 'Introduction to Medicine', 3, 1, 1, NULL),
    ('BIO101', 'Anatomy', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry', 3, 1, 1, NULL),
    ('PHYS101', 'Physics', 3, 1, 1, NULL),
    ('MATH101', 'Biostatistics', 3, 1, 1, NULL),
    ('COMM101', 'Communication Skills in Medicine', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('MED102', 'Medical Ethics', 3, 1, 2, NULL),
    ('BIO102', 'Physiology', 3, 1, 2, 'BIO101'),
    ('CHEM102', 'Biochemistry', 3, 1, 2, 'CHEM101'),
    ('PHYS102', 'Medical Imaging', 3, 1, 2, 'PHYS101'),
    ('MATH102', 'Medical Informatics', 3, 1, 2, 'MATH101'),
    ('COMM102', 'Professional Communication in Medicine', 3, 1, 2, 'COMM101'),

    -- Year 2, Semester 1
    ('MED201', 'Pathology', 3, 2, 1, 'BIO102'),
    ('MICRO201', 'Microbiology', 3, 2, 1, 'BIO102'),
    ('PHARM201', 'Pharmacology', 3, 2, 1, 'CHEM102'),
    ('CLIN201', 'Clinical Skills I', 3, 2, 1, 'MED101'),
    ('ETH201', 'Ethical Issues in Medicine', 3, 2, 1, 'MED102'),
    ('BIOS201', 'Biostatistics for Medicine', 3, 2, 1, 'MATH101'),

    -- Year 2, Semester 2
    ('MED202', 'Introduction to Clinical Medicine', 3, 2, 2, 'MED201'),
    ('PATH202', 'Pathophysiology', 3, 2, 2, 'MED201'),
    ('MICRO202', 'Medical Microbiology', 3, 2, 2, 'MICRO201'),
    ('PHARM202', 'Clinical Pharmacology', 3, 2, 2, 'PHARM201'),
    ('CLIN202', 'Clinical Skills II', 3, 2, 2, 'CLIN201'),
    ('ETH202', 'Professional Ethics in Medicine', 3, 2, 2, 'ETH201'),

    -- Year 3, Semester 1
    ('MED301', 'Internal Medicine I', 3, 3, 1, 'MED202'),
    ('SURG301', 'Surgery I', 3, 3, 1, 'MED202'),
    ('OBGYN301', 'Obstetrics and Gynecology I', 3, 3, 1, 'MED202'),
    ('PEDS301', 'Pediatrics I', 3, 3, 1, 'MED202'),
    ('PSY301', 'Psychiatry I', 3, 3, 1, 'MED202'),
    ('RAD301', 'Radiology I', 3, 3, 1, 'MED202'),

    -- Year 3, Semester 2
    ('MED302', 'Internal Medicine II', 3, 3, 2, 'MED301'),
    ('SURG302', 'Surgery II', 3, 3, 2, 'SURG301'),
    ('OBGYN302', 'Obstetrics and Gynecology II', 3, 3, 2, 'OBGYN301'),
    ('PEDS302', 'Pediatrics II', 3, 3, 2, 'PEDS301'),
    ('PSY302', 'Psychiatry II', 3, 3, 2, 'PSY301'),
    ('RAD302', 'Radiology II', 3, 3, 2, 'RAD301'),

    -- Year 4, Semester 1
    ('MED401', 'Emergency Medicine', 3, 4, 1, 'MED302'),
    ('DERM401', 'Dermatology', 3, 4, 1, 'MED302'),
    ('NEUR401', 'Neurology', 3, 4, 1, 'MED302'),
    ('ENT401', 'Otorhinolaryngology', 3, 4, 1, 'MED302'),
    ('ORTHO401', 'Orthopedics', 3, 4, 1, 'MED302'),
    ('OPHTH401', 'Ophthalmology', 3, 4, 1, 'MED302'),

    -- Year 4, Semester 2
    ('MED402', 'Family Medicine', 3, 4, 2, 'MED401'),
    ('DERM402', 'Cosmetic Dermatology', 3, 4, 2, 'DERM401'),
    ('NEUR402', 'Pediatric Neurology', 3, 4, 2, 'NEUR401'),
    ('ENT402', 'Head and Neck Surgery', 3, 4, 2, 'ENT401'),
    ('ORTHO402', 'Trauma Orthopedics', 3, 4, 2, 'ORTHO401'),
    ('OPHTH402', 'Surgical Ophthalmology', 3, 4, 2, 'OPHTH401'),

    -- Year 5, Semester 1
    ('MED501', 'Cardiology', 3, 5, 1, 'MED402'),
    ('ENDO501', 'Endocrinology', 3, 5, 1, 'MED402'),
    ('GASTRO501', 'Gastroenterology', 3, 5, 1, 'MED402'),
    ('HEMONC501', 'Hematology-Oncology', 3, 5, 1, 'MED402'),
    ('PULMO501', 'Pulmonology', 3, 5, 1, 'MED402'),
    ('ID501', 'Infectious Diseases', 3, 5, 1, 'MED402'),

    -- Year 5, Semester 2
    ('MED502', 'Intensive Care Medicine', 3, 5, 2, 'MED501'),
    ('ENDO502', 'Reproductive Endocrinology', 3, 5, 2, 'ENDO501'),
    ('GASTRO502', 'Hepatology', 3, 5, 2, 'GASTRO501'),
    ('HEMONC502', 'Pediatric Oncology', 3, 5, 2, 'HEMONC501'),
    ('PULMO502', 'Thoracic Surgery', 3, 5, 2, 'PULMO501'),
    ('ID502', 'Travel Medicine', 3, 5, 2, 'ID501'),

    -- Year 6, Semester 1
    ('MED601', 'Medical Ethics and Law', 3, 6, 1, 'MED502'),
    ('MED602', 'Research Methodology in Medicine', 3, 6, 1, 'MED502'),
    ('MED603', 'Clinical Electives', 3, 6, 1, 'MED502'),
    ('MED604', 'Internship: General Medicine', 3, 6, 1, 'MED502'),
    ('MED605', 'Internship: Specialization', 3, 6, 1, 'MED502'),
    ('MED606', 'Thesis in Medicine', 3, 6, 1, 'MED502'),

    -- Year 6, Semester 2
    ('MED607', 'Advanced Medical Imaging', 3, 6, 2, 'MED603'),
    ('MED608', 'Advanced Clinical Skills', 3, 6, 2, 'MED603'),
    ('MED609', 'Medical Seminar', 3, 6, 2, 'MED603'),
    ('MED610', 'Internship: Subspecialization', 3, 6, 2, 'MED605'),
    ('MED611', 'Medical Research Project', 3, 6, 2, 'MED606'),
    ('MED612', 'Final Examination', 3, 6, 2, NULL);



  --MED-SURG
    -- Year 1, Semester 1
    ('SURG101', 'Introduction to Surgical Medicine', 3, 1, 1, NULL),
    ('BIO101', 'Anatomy', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry', 3, 1, 1, NULL),
    ('PHYS101', 'Physics', 3, 1, 1, NULL),
    ('MATH101', 'Biostatistics', 3, 1, 1, NULL),
    ('COMM101', 'Communication Skills in Medicine', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('SURG102', 'Basic Surgical Techniques', 3, 1, 2, 'SURG101'),
    ('BIO102', 'Physiology', 3, 1, 2, 'BIO101'),
    ('CHEM102', 'Biochemistry', 3, 1, 2, 'CHEM101'),
    ('PHYS102', 'Medical Imaging', 3, 1, 2, 'PHYS101'),
    ('MATH102', 'Medical Informatics', 3, 1, 2, 'MATH101'),
    ('COMM102', 'Professional Communication in Medicine', 3, 1, 2, 'COMM101'),

    -- Year 2, Semester 1
    ('SURG201', 'Surgical Anatomy', 3, 2, 1, 'SURG102'),
    ('MICRO201', 'Microbiology', 3, 2, 1, 'BIO102'),
    ('PHARM201', 'Pharmacology', 3, 2, 1, 'CHEM102'),
    ('CLIN201', 'Clinical Skills I', 3, 2, 1, 'SURG101'),
    ('ETH201', 'Ethical Issues in Surgery', 3, 2, 1, 'SURG102'),
    ('BIOS201', 'Biostatistics for Surgery', 3, 2, 1, 'MATH101'),

    -- Year 2, Semester 2
    ('SURG202', 'Principles of Surgical Management', 3, 2, 2, 'SURG201'),
    ('PATH202', 'Pathophysiology', 3, 2, 2, 'MICRO201'),
    ('MICRO202', 'Medical Microbiology', 3, 2, 2, 'MICRO201'),
    ('PHARM202', 'Clinical Pharmacology', 3, 2, 2, 'PHARM201'),
    ('CLIN202', 'Clinical Skills II', 3, 2, 2, 'CLIN201'),
    ('ETH202', 'Professional Ethics in Surgery', 3, 2, 2, 'ETH201'),

    -- Year 3, Semester 1
    ('SURG301', 'General Surgery I', 3, 3, 1, 'SURG202'),
    ('SURG302', 'Orthopedic Surgery I', 3, 3, 1, 'SURG202'),
    ('SURG303', 'Neurosurgery I', 3, 3, 1, 'SURG202'),
    ('SURG304', 'Cardiothoracic Surgery I', 3, 3, 1, 'SURG202'),
    ('SURG305', 'Plastic Surgery I', 3, 3, 1, 'SURG202'),
    ('SURG306', 'Urology I', 3, 3, 1, 'SURG202'),

    -- Year 3, Semester 2
    ('SURG307', 'General Surgery II', 3, 3, 2, 'SURG301'),
    ('SURG308', 'Orthopedic Surgery II', 3, 3, 2, 'SURG302'),
    ('SURG309', 'Neurosurgery II', 3, 3, 2, 'SURG303'),
    ('SURG310', 'Cardiothoracic Surgery II', 3, 3, 2, 'SURG304'),
    ('SURG311', 'Plastic Surgery II', 3, 3, 2, 'SURG305'),
    ('SURG312', 'Urology II', 3, 3, 2, 'SURG306'),

    -- Year 4, Semester 1
    ('SURG401', 'Vascular Surgery', 3, 4, 1, 'SURG307'),
    ('SURG402', 'Pediatric Surgery', 3, 4, 1, 'SURG308'),
    ('SURG403', 'Transplant Surgery', 3, 4, 1, 'SURG309'),
    ('SURG404', 'Colorectal Surgery', 3, 4, 1, 'SURG310'),
    ('SURG405', 'Head and Neck Surgery', 3, 4, 1, 'SURG311'),
    ('SURG406', 'Surgical Oncology', 3, 4, 1, 'SURG312'),

    -- Year 4, Semester 2
    ('SURG407', 'Endocrine Surgery', 3, 4, 2, 'SURG401'),
    ('SURG408', 'Trauma Surgery', 3, 4, 2, 'SURG402'),
    ('SURG409', 'Hepatobiliary Surgery', 3, 4, 2, 'SURG403'),
    ('SURG410', 'Thoracic Surgery', 3, 4, 2, 'SURG404'),
    ('SURG411', 'Maxillofacial Surgery', 3, 4, 2, 'SURG405'),
    ('SURG412', 'Reconstructive Surgery', 3, 4, 2, 'SURG406'),

    -- Year 5, Semester 1
    ('SURG501', 'Advanced Laparoscopic Surgery', 3, 5, 1, 'SURG407'),
    ('SURG502', 'Robotic Surgery', 3, 5, 1, 'SURG408'),
    ('SURG503', 'Advanced Trauma Surgery', 3, 5, 1, 'SURG409'),
    ('SURG504', 'Microvascular Surgery', 3, 5, 1, 'SURG410'),
    ('SURG505', 'Pediatric Orthopedic Surgery', 3, 5, 1, 'SURG411'),
    ('SURG506', 'Thoracic Oncology', 3, 5, 1, 'SURG412'),

    -- Year 5, Semester 2
    ('SURG507', 'Transoral Robotic Surgery', 3, 5, 2, 'SURG501'),
    ('SURG508', 'Complex Gastrointestinal Surgery', 3, 5, 2, 'SURG502'),
    ('SURG509', 'Plastic and Reconstructive Surgery', 3, 5, 2, 'SURG503'),
    ('SURG510', 'Cardiovascular Surgery', 3, 5, 2, 'SURG504'),
    ('SURG511', 'Orthopedic Trauma Surgery', 3, 5, 2, 'SURG505'),
    ('SURG512', 'Surgical Critical Care', 3, 5, 2, 'SURG506'),

    -- Year 6, Semester 1
    ('SURG601', 'Surgical Subspecialty I', 3, 6, 1, 'SURG507'),
    ('SURG602', 'Surgical Subspecialty II', 3, 6, 1, 'SURG508'),
    ('SURG603', 'Surgical Subspecialty III', 3, 6, 1, 'SURG509'),
    ('SURG604', 'Surgical Subspecialty IV', 3, 6, 1, 'SURG510'),
    ('SURG605', 'Surgical Subspecialty V', 3, 6, 1, 'SURG511'),
    ('SURG606', 'Surgical Subspecialty VI', 3, 6, 1, 'SURG512'),

    -- Year 6, Semester 2
    ('SURG607', 'Advanced Surgical Seminar', 3, 6, 2, 'SURG601'),
    ('SURG608', 'Surgical Innovation and Research', 3, 6, 2, 'SURG602'),
    ('SURG609', 'Surgical Leadership and Management', 3, 6, 2, 'SURG603'),
    ('SURG610', 'Surgical Ethics and Professionalism', 3, 6, 2, 'SURG604'),
    ('SURG611', 'Surgical Grand Rounds', 3, 6, 2, 'SURG605'),
    ('SURG612', 'Final Clinical Rotation', 3, 6, 2, 'SURG606');




  --MED-PHARM
    -- Year 1, Semester 1
    ('PHARM101', 'Introduction to Pharmacy', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry', 3, 1, 1, NULL),
    ('BIOL101', 'Biology', 3, 1, 1, NULL),
    ('MATH101', 'Mathematics for Pharmacy', 3, 1, 1, NULL),
    ('COMM101', 'Communication Skills for Pharmacists', 3, 1, 1, NULL),
    ('PHARM102', 'Pharmacy Ethics and Professionalism', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('PHARM103', 'Pharmacology I', 3, 1, 2, 'PHARM101'),
    ('CHEM102', 'Organic Chemistry', 3, 1, 2, 'CHEM101'),
    ('BIOL102', 'Microbiology', 3, 1, 2, 'BIOL101'),
    ('MATH102', 'Statistics for Pharmacists', 3, 1, 2, 'MATH101'),
    ('PHARM104', 'Introduction to Pharmacy Practice', 3, 1, 2, 'PHARM101'),
    ('PHARM105', 'Pharmaceutical Formulation', 3, 1, 2, 'PHARM101'),

    -- Year 2, Semester 1
    ('PHARM201', 'Pharmacology II', 3, 2, 1, 'PHARM103'),
    ('CHEM201', 'Pharmaceutical Chemistry', 3, 2, 1, 'CHEM102'),
    ('BIOL201', 'Physiology', 3, 2, 1, 'BIOL102'),
    ('PHARM202', 'Pharmacy Law and Regulations', 3, 2, 1, 'PHARM102'),
    ('PHARM203', 'Pharmacy Management', 3, 2, 1, 'PHARM102'),
    ('PHARM204', 'Clinical Pharmacokinetics', 3, 2, 1, 'PHARM103'),

    -- Year 2, Semester 2
    ('PHARM205', 'Pharmacotherapy I', 3, 2, 2, 'PHARM201'),
    ('CHEM202', 'Medicinal Chemistry', 3, 2, 2, 'CHEM201'),
    ('BIOL202', 'Pathophysiology', 3, 2, 2, 'BIOL201'),
    ('PHARM206', 'Pharmacy Informatics', 3, 2, 2, 'PHARM203'),
    ('PHARM207', 'Pharmacy Economics', 3, 2, 2, 'PHARM203'),
    ('PHARM208', 'Clinical Pharmacy Practice', 3, 2, 2, 'PHARM204'),

    -- Year 3, Semester 1
    ('PHARM301', 'Pharmacotherapy II', 3, 3, 1, 'PHARM205'),
    ('PHARM302', 'Pharmacy Research Methods', 3, 3, 1, 'PHARM206'),
    ('PHARM303', 'Pharmacy Quality Assurance', 3, 3, 1, 'PHARM207'),
    ('PHARM304', 'Pharmacoeconomics', 3, 3, 1, 'PHARM207'),
    ('PHARM305', 'Pharmacy Practice Experience I', 3, 3, 1, 'PHARM208'),
    ('PHARM306', 'Pharmacy Internship I', 3, 3, 1, 'PHARM208'),

    -- Year 3, Semester 2
    ('PHARM307', 'Pharmacotherapy III', 3, 3, 2, 'PHARM301'),
    ('PHARM308', 'Clinical Toxicology', 3, 3, 2, 'PHARM302'),
    ('PHARM309', 'Pharmacy Practice Experience II', 3, 3, 2, 'PHARM305'),
    ('PHARM310', 'Pharmacy Internship II', 3, 3, 2, 'PHARM306'),
    ('PHARM311', 'Pharmacy Law Seminar', 3, 3, 2, 'PHARM202'),
    ('PHARM312', 'Ethics in Pharmacy Practice', 3, 3, 2, 'PHARM202'),

    -- Year 4, Semester 1
    ('PHARM401', 'Pharmacotherapy IV', 3, 4, 1, 'PHARM307'),
    ('PHARM402', 'Clinical Trials and Research Ethics', 3, 4, 1, 'PHARM308'),
    ('PHARM403', 'Pharmacy Practice Management', 3, 4, 1, 'PHARM303'),
    ('PHARM404', 'Pharmacy Informatics II', 3, 4, 1, 'PHARM306'),
    ('PHARM405', 'Pharmacy Practice Experience III', 3, 4, 1, 'PHARM309'),
    ('PHARM406', 'Pharmacy Internship III', 3, 4, 1, 'PHARM310'),

    -- Year 4, Semester 2
    ('PHARM407', 'Pharmacotherapy V', 3, 4, 2, 'PHARM401'),
    ('PHARM408', 'Pharmacoepidemiology', 3, 4, 2, 'PHARM402'),
    ('PHARM409', 'Pharmacy Practice Experience IV', 3, 4, 2, 'PHARM405'),
    ('PHARM410', 'Pharmacy Internship IV', 3, 4, 2, 'PHARM406'),
    ('PHARM411', 'Public Health Pharmacy', 3, 4, 2, 'PHARM304'),
    ('PHARM412', 'Global Health and Pharmacy', 3, 4, 2, 'PHARM304'),

    -- Year 5, Semester 1
    ('PHARM501', 'Pharmacotherapy VI', 3, 5, 1, 'PHARM407'),
    ('PHARM502', 'Advanced Clinical Pharmacy', 3, 5, 1, 'PHARM408'),
    ('PHARM503', 'Pharmacy Law and Ethics', 3, 5, 1, 'PHARM311'),
    ('PHARM504', 'Pharmacy Practice Experience V', 3, 5, 1, 'PHARM409'),
    ('PHARM505', 'Pharmacy Internship V', 3, 5, 1, 'PHARM410'),
    ('PHARM506', 'Pharmacy Leadership and Management', 3, 5, 1, 'PHARM405'),

    -- Year 5, Semester 2
    ('PHARM507', 'Pharmacotherapy VII', 3, 5, 2, 'PHARM501'),
    ('PHARM508', 'Advanced Pharmacokinetics', 3, 5, 2, 'PHARM502'),
    ('PHARM509', 'Pharmacy Practice Experience VI', 3, 5, 2, 'PHARM504'),
    ('PHARM510', 'Pharmacy Internship VI', 3, 5, 2, 'PHARM505'),
    ('PHARM511', 'Pharmacy Informatics III', 3, 5, 2, 'PHARM404'),
    ('PHARM512', 'Pharmacy Research Project', 3, 5, 2, 'PHARM503'),

    -- Year 6, Semester 1
    ('PHARM601', 'Advanced Pharmacotherapy', 3, 6, 1, 'PHARM507'),
    ('PHARM602', 'Pharmaceutical Biotechnology', 3, 6, 1, 'PHARM508'),
    ('PHARM603', 'Pharmacy Entrepreneurship', 3, 6, 1, 'PHARM506'),
    ('PHARM604', 'Pharmacy Practice Experience VII', 3, 6, 1, 'PHARM509'),
    ('PHARM605', 'Pharmacy Internship VII', 3, 6, 1, 'PHARM510'),
    ('PHARM606', 'Capstone Project in Pharmaceutical Medicine', 3, 6, 1, 'PHARM512'),

    -- Year 6, Semester 2
    ('PHARM607', 'Clinical Pharmacy Residency', 3, 6, 2, 'PHARM601'),
    ('PHARM608', 'Pharmaceutical Industry Internship', 3, 6, 2, 'PHARM602'),
    ('PHARM609', 'Pharmacy Practice Experience VIII', 3, 6, 2, 'PHARM604'),
    ('PHARM610', 'Pharmacy Internship VIII', 3, 6, 2, 'PHARM605'),
    ('PHARM611', 'Pharmacy Regulations and Compliance', 3, 6, 2, 'PHARM603'),
    ('PHARM612', 'Graduation Seminar', 3, 6, 2, 'PHARM606');

  
  --ENV-SCI
    -- Year 1, Semester 1
    ('ENV101', 'Introduction to Environmental Science', 3, 1, 1, NULL),
    ('BIOL101', 'Biology I', 3, 1, 1, NULL),
    ('CHEM101', 'General Chemistry I', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('ENVS110', 'Environmental Policy and Law', 3, 1, 1, NULL),
    ('GEOL101', 'Introduction to Geology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('ENV102', 'Environmental Sustainability', 3, 1, 2, 'ENV101'),
    ('BIOL102', 'Biology II', 3, 1, 2, 'BIOL101'),
    ('CHEM102', 'General Chemistry II', 3, 1, 2, 'CHEM101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('ENVS120', 'Environmental Ethics', 3, 1, 2, NULL),
    ('GEOL102', 'Earth Systems', 3, 1, 2, 'GEOL101'),

    -- Year 2, Semester 1
    ('ENV201', 'Ecology', 3, 2, 1, 'ENV102'),
    ('PHYS101', 'Physics I', 3, 2, 1, NULL),
    ('STAT101', 'Statistics for Environmental Sciences', 3, 2, 1, NULL),
    ('ENVS210', 'Environmental Impact Assessment', 3, 2, 1, NULL),
    ('ENVS220', 'Environmental Management', 3, 2, 1, NULL),
    ('GEOL201', 'Geomorphology', 3, 2, 1, 'GEOL102'),

    -- Year 2, Semester 2
    ('ENV202', 'Conservation Biology', 3, 2, 2, 'ENV201'),
    ('PHYS102', 'Physics II', 3, 2, 2, 'PHYS101'),
    ('STAT102', 'Advanced Statistics for Environmental Sciences', 3, 2, 2, 'STAT101'),
    ('ENVS230', 'Environmental Monitoring and Modeling', 3, 2, 2, NULL),
    ('ENVS240', 'Sustainable Development', 3, 2, 2, 'ENV102'),
    ('GEOL202', 'Hydrology', 3, 2, 2, 'GEOL201'),

    -- Year 3, Semester 1
    ('ENV301', 'Environmental Chemistry', 3, 3, 1, 'CHEM102'),
    ('ENVS310', 'Waste Management', 3, 3, 1, 'ENVS220'),
    ('ENVS320', 'Climate Change and Adaptation', 3, 3, 1, NULL),
    ('ENVS330', 'Environmental Health', 3, 3, 1, NULL),
    ('ENVS340', 'Renewable Energy', 3, 3, 1, NULL),
    ('GEOL301', 'Geochemistry', 3, 3, 1, 'GEOL202'),

    -- Year 3, Semester 2
    ('ENV302', 'Air Quality Management', 3, 3, 2, 'ENV301'),
    ('ENVS350', 'Environmental Economics', 3, 3, 2, NULL),
    ('ENVS360', 'Environmental Communication', 3, 3, 2, NULL),
    ('ENVS370', 'Environmental Law and Policy', 3, 3, 2, 'ENVS210'),
    ('ENVS380', 'Environmental Planning', 3, 3, 2, 'ENVS220'),
    ('GEOL302', 'Environmental Geology', 3, 3, 2, 'GEOL201'),

    -- Year 4, Semester 1
    ('ENV401', 'Natural Resource Management', 3, 4, 1, NULL),
    ('ENVS410', 'Environmental Education', 3, 4, 1, NULL),
    ('ENVS420', 'Ecotoxicology', 3, 4, 1, 'ENV301'),
    ('ENVS430', 'Environmental Sociology', 3, 4, 1, NULL),
    ('ENVS440', 'Urban Ecology', 3, 4, 1, NULL),
    ('GEOL401', 'Environmental Geochemistry', 3, 4, 1, 'GEOL301'),

    -- Year 4, Semester 2
    ('ENV402', 'Environmental Remote Sensing', 3, 4, 2, NULL),
    ('ENVS450', 'Corporate Environmental Responsibility', 3, 4, 2, NULL),
    ('ENVS460', 'Environmental Impact Mitigation', 3, 4, 2, NULL),
    ('ENVS470', 'Environmental Policy Analysis', 3, 4, 2, 'ENVS370'),
    ('ENVS480', 'Internship in Environmental Sciences', 3, 4, 2, NULL),
    ('GEOL402', 'Environmental Hydrogeology', 3, 4, 2, 'GEOL302');





  --ENV-GEO
    -- Year 1, Semester 1
    ('GEOG101', 'Introduction to Geography', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('BIOL101', 'Biology I', 3, 1, 1, NULL),
    ('STAT101', 'Introduction to Statistics', 3, 1, 1, NULL),
    ('GEOG110', 'Geographic Information Systems (GIS)', 3, 1, 1, NULL),
    ('ENGL101', 'Introduction to Composition', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('GEOG102', 'Physical Geography', 3, 1, 2, 'GEOG101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('BIOL102', 'Biology II', 3, 1, 2, 'BIOL101'),
    ('STAT102', 'Advanced Statistics for Geography', 3, 1, 2, 'STAT101'),
    ('GEOG120', 'Human Geography', 3, 1, 2, NULL),
    ('ENGL102', 'Introduction to Literature', 3, 1, 2, 'ENGL101'),

    -- Year 2, Semester 1
    ('GEOG201', 'Geomorphology', 3, 2, 1, 'GEOG102'),
    ('GEOG202', 'Climatology', 3, 2, 1, 'GEOG102'),
    ('GEOG210', 'Quantitative Methods in Geography', 3, 2, 1, 'STAT102'),
    ('GEOG220', 'Population Geography', 3, 2, 1, 'GEOG120'),
    ('GEOG230', 'Cultural Geography', 3, 2, 1, 'GEOG120'),
    ('CHEM101', 'General Chemistry I', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('GEOG203', 'Biogeography', 3, 2, 2, 'GEOG201'),
    ('GEOG204', 'Hydrology', 3, 2, 2, 'GEOG202'),
    ('GEOG211', 'Spatial Analysis', 3, 2, 2, 'GEOG210'),
    ('GEOG221', 'Economic Geography', 3, 2, 2, 'GEOG120'),
    ('GEOG231', 'Urban Geography', 3, 2, 2, 'GEOG120'),
    ('PHYS101', 'Physics I', 3, 2, 2, NULL),

    -- Year 3, Semester 1
    ('GEOG301', 'Environmental Geography', 3, 3, 1, 'GEOG203'),
    ('GEOG302', 'Climate Change Geography', 3, 3, 1, 'GEOG204'),
    ('GEOG310', 'Remote Sensing', 3, 3, 1, 'GEOG211'),
    ('GEOG320', 'Rural Geography', 3, 3, 1, 'GEOG221'),
    ('GEOG330', 'Development Geography', 3, 3, 1, 'GEOG231'),
    ('SOC101', 'Introduction to Sociology', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('GEOG303', 'Soil Geography', 3, 3, 2, 'GEOG201'),
    ('GEOG304', 'Coastal Geography', 3, 3, 2, 'GEOG202'),
    ('GEOG311', 'Geostatistics', 3, 3, 2, 'GEOG210'),
    ('GEOG321', 'Political Geography', 3, 3, 2, 'GEOG221'),
    ('GEOG331', 'Transportation Geography', 3, 3, 2, 'GEOG231'),
    ('ANTH101', 'Introduction to Anthropology', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('GEOG401', 'Geographic Information Systems (GIS) Applications', 3, 4, 1, 'GEOG310'),
    ('GEOG402', 'Advanced Remote Sensing', 3, 4, 1, 'GEOG310'),
    ('GEOG410', 'Political Ecology', 3, 4, 1, 'GEOG330'),
    ('GEOG420', 'Tourism Geography', 3, 4, 1, 'GEOG320'),
    ('GEOG430', 'Health Geography', 3, 4, 1, 'GEOG330'),
    ('ECON101', 'Principles of Microeconomics', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('GEOG403', 'Applied Geostatistics', 3, 4, 2, 'GEOG311'),
    ('GEOG404', 'Urban Planning', 3, 4, 2, 'GEOG311'),
    ('GEOG411', 'Natural Hazards Geography', 3, 4, 2, 'GEOG301'),
    ('GEOG421', 'Cultural Landscapes', 3, 4, 2, 'GEOG320'),
    ('GEOG431', 'Environmental Justice', 3, 4, 2, 'GEOG330'),
    ('BUS101', 'Introduction to Business', 3, 4, 2, NULL);



  --ENV-PLAN
    -- Year 1, Semester 1
    ('URB101', 'Introduction to Urban Planning', 3, 1, 1, NULL),
    ('MATH101', 'Calculus I', 3, 1, 1, NULL),
    ('GEOG101', 'Introduction to Geography', 3, 1, 1, NULL),
    ('ECON101', 'Principles of Microeconomics', 3, 1, 1, NULL),
    ('ENGL101', 'Introduction to Composition', 3, 1, 1, NULL),
    ('SOC101', 'Introduction to Sociology', 3, 1, 1, NULL),

    -- Year 1, Semester 2
    ('URB102', 'Urban Development History', 3, 1, 2, 'URB101'),
    ('MATH102', 'Calculus II', 3, 1, 2, 'MATH101'),
    ('GEOG102', 'Physical Geography', 3, 1, 2, 'GEOG101'),
    ('ECON102', 'Principles of Macroeconomics', 3, 1, 2, 'ECON101'),
    ('ENGL102', 'Introduction to Literature', 3, 1, 2, 'ENGL101'),
    ('POL101', 'Introduction to Political Science', 3, 1, 2, NULL),

    -- Year 2, Semester 1
    ('URB201', 'Urban Design', 3, 2, 1, 'URB102'),
    ('URB202', 'Urban Planning Theory', 3, 2, 1, 'URB102'),
    ('GEOG201', 'Geomorphology', 3, 2, 1, 'GEOG102'),
    ('STAT101', 'Introduction to Statistics', 3, 2, 1, NULL),
    ('PHYS101', 'Physics I', 3, 2, 1, NULL),
    ('PSYC101', 'Introduction to Psychology', 3, 2, 1, NULL),

    -- Year 2, Semester 2
    ('URB203', 'Urban Sociology', 3, 2, 2, 'SOC101'),
    ('URB204', 'Urban Economics', 3, 2, 2, 'ECON102'),
    ('GEOG202', 'Climatology', 3, 2, 2, 'GEOG102'),
    ('STAT102', 'Advanced Statistics for Urban Planning', 3, 2, 2, 'STAT101'),
    ('PHYS102', 'Physics II', 3, 2, 2, 'PHYS101'),
    ('POL102', 'Comparative Politics', 3, 2, 2, 'POL101'),

    -- Year 3, Semester 1
    ('URB301', 'Transportation Planning', 3, 3, 1, 'URB201'),
    ('URB302', 'Land Use Planning', 3, 3, 1, 'URB201'),
    ('URB303', 'Urban Renewal and Redevelopment', 3, 3, 1, 'URB202'),
    ('URB310', 'GIS Applications in Urban Planning', 3, 3, 1, 'URB202'),
    ('URB320', 'Community Development', 3, 3, 1, 'URB203'),
    ('ARCH101', 'Introduction to Architecture', 3, 3, 1, NULL),

    -- Year 3, Semester 2
    ('URB304', 'Environmental Planning', 3, 3, 2, 'URB202'),
    ('URB305', 'Housing and Real Estate Planning', 3, 3, 2, 'URB203'),
    ('URB311', 'Advanced Urban Design', 3, 3, 2, 'URB301'),
    ('URB321', 'Infrastructure Planning', 3, 3, 2, 'URB302'),
    ('URB330', 'Regional Planning', 3, 3, 2, 'URB303'),
    ('ARCH102', 'Architectural Design', 3, 3, 2, NULL),

    -- Year 4, Semester 1
    ('URB401', 'Urban Policy Analysis', 3, 4, 1, 'URB303'),
    ('URB402', 'Legal Issues in Urban Planning', 3, 4, 1, 'URB302'),
    ('URB410', 'Public Participation in Urban Planning', 3, 4, 1, 'URB320'),
    ('URB420', 'International Urban Planning', 3, 4, 1, 'URB330'),
    ('URB430', 'Capstone Project in Urban Planning', 3, 4, 1, NULL),
    ('ETHS101', 'Introduction to Ethics', 3, 4, 1, NULL),

    -- Year 4, Semester 2
    ('URB403', 'Urban Governance', 3, 4, 2, 'URB301'),
    ('URB404', 'Smart Cities', 3, 4, 2, 'URB302'),
    ('URB411', 'Urban Environmental Management', 3, 4, 2, 'URB304'),
    ('URB421', 'Urbanization in Developing Countries', 3, 4, 2, 'URB320'),
    ('URB431', 'Internship in Urban Planning', 3, 4, 2, 'URB430'),
    ('BUS101', 'Introduction to Business', 3, 4, 2, NULL);


  --KIN-KIN
    ('KIN101', 'Introduction to Kinesiology', 3, 1, 1, 'BIOL101'),
    ('KIN102', 'Motor Learning and Development', 3, 1, 1, 'PSYC101'),
    ('KIN103', 'Exercise Physiology', 3, 1, 1, 'BIOL101'),
    ('STAT104', 'Introduction to Statistics', 3, 1, 1, NULL),
    ('KIN105', 'Biomechanics', 3, 1, 1, 'KIN101'),
    ('KIN106', 'Neuromotor Control', 3, 1, 1, 'KIN101');

    -- Spring Semester
    ('KIN107', 'Functional Anatomy', 3, 1, 2, 'BIOL101'),
    ('KIN108', 'Exercise Psychology', 3, 1, 2, 'PSYC101'),
    ('KIN109', 'Exercise Prescription', 3, 1, 2, 'KIN103'),
    ('KIN110', 'Research Methods in Kinesiology', 3, 1, 2, NULL),
    ('KIN111', 'Sports Nutrition', 3, 1, 2, 'KIN103'),
    ('KIN112', 'Introduction to Sports Medicine', 3, 1, 2, NULL);

    -- Year 2
    -- Fall Semester
    ('KIN201', 'Advanced Biomechanics', 3, 2, 1, 'KIN105'),
    ('KIN202', 'Exercise Testing and Prescription', 3, 2, 1, 'KIN109'),
    ('KIN203', 'Cardiovascular Physiology', 3, 2, 1, 'KIN103'),
    ('KIN204', 'Motor Control and Learning', 3, 2, 1, 'KIN102'),
    ('KIN205', 'Health Promotion', 3, 2, 1, NULL),
    ('KIN206', 'Sport and Exercise Psychology', 3, 2, 1, 'KIN108');

    -- Spring Semester
    ('KIN207', 'Adapted Physical Activity', 3, 2, 2, NULL),
    ('KIN208', 'Strength and Conditioning', 3, 2, 2, 'KIN109'),
    ('KIN209', 'Motor Development', 3, 2, 2, 'KIN202'),
    ('KIN210', 'Clinical Exercise Physiology', 3, 2, 2, 'KIN203'),
    ('KIN211', 'Psychosocial Aspects of Disability', 3, 2, 2, NULL),
    ('KIN212', 'Sport Management', 3, 2, 2, NULL);

    -- Year 3
    -- Fall Semester
    ('KIN301', 'Exercise Epidemiology', 3, 3, 1, NULL),
    ('KIN302', 'Sports Injury Management', 3, 3, 1, 'KIN112'),
    ('KIN303', 'Exercise Physiology II', 3, 3, 1, 'KIN203'),
    ('KIN304', 'Advanced Nutrition', 3, 3, 1, 'KIN111'),
    ('KIN305', 'Advanced Exercise Physiology', 3, 3, 1, 'KIN204'),
    ('KIN306', 'Sport Sociology', 3, 3, 1, NULL);

    -- Spring Semester
    ('KIN307', 'Biomechanical Analysis', 3, 3, 2, 'KIN201'),
    ('KIN308', 'Exercise Prescription for Special Populations', 3, 3, 2, 'KIN210'),
    ('KIN309', 'Sport and Exercise Nutrition', 3, 3, 2, 'KIN111'),
    ('KIN310', 'Sports Medicine Research', 3, 3, 2, 'KIN302'),
    ('KIN311', 'Exercise Testing and Interpretation', 3, 3, 2, 'KIN210'),
    ('KIN312', 'Exercise Immunology', 3, 3, 2, 'KIN303');

    -- Year 4
    -- Fall Semester
    ('KIN401', 'Advanced Exercise Physiology II', 3, 4, 1, 'KIN305'),
    ('KIN402', 'Advanced Biomechanics II', 3, 4, 1, 'KIN307'),
    ('KIN403', 'Clinical Biomechanics', 3, 4, 1, 'KIN301'),
    ('KIN404', 'Research Seminar in Kinesiology', 3, 4, 1, 'KIN310'),
    ('KIN405', 'Exercise Rehabilitation', 3, 4, 1, 'KIN302'),
    ('KIN406', 'Internship in Kinesiology', 6, 4, 1, NULL);

    -- Spring Semester
    ('KIN407', 'Thesis in Kinesiology', 6, 4, 2, NULL),
    ('KIN408', 'Applied Kinesiology', 3, 4, 2, 'KIN401'),
    ('KIN409', 'Advanced Exercise Prescription', 3, 4, 2, 'KIN311'),
    ('KIN410', 'Sports Performance Analysis', 3, 4, 2, 'KIN402'),
    ('KIN411', 'Ethics in Kinesiology', 3, 4, 2, NULL),
    ('KIN412', 'Leadership in Kinesiology', 3, 4, 2, NULL);
























