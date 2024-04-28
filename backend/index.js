const express = require('express');
const mysql = require('mysql2');
const cors = require("cors");

const app = express();

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'university_database',
  password: "owmd-root-sql-425"
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err);
    return;
  }
  console.log('Connected to database!');
});

app.use(express.json());
app.use(cors());


app.get('/students', (req, res) => {
  const query = 'SELECT * FROM students ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching students:', err);
      return res.status(500).json({ error: 'Failed to retrieve students' });
    }
    res.json(data);
  });
});

app.post('/students', (req, res) => {

  const s = req.body;
  const value = [
    s.Student_ID,
    s.Name,
    s.date_of_birth,
    s.national_ID,
    s.Mobile_No, 
    s.Extra_Mobile_No,
    s.Email,
    s.Address,
    s.Gender,
    s.Parent_ID,
    s.Department_ID,
    "S01",
    s.Level,
    s.GPA,
    2023
  ];

  const query = 'INSERT INTO students VALUES (?)';
  db.query(query,[value], (err, data) => {
    if (err) {
      console.error('Error fetching students:', err);
      return res.status(500).json({ error: 'Failed to retrieve students' });
    }
    res.json(data);
  });
});

app.get('/parents', (req, res) => {
  const query = 'SELECT * FROM parents ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching parents:', err);
      return res.status(500).json({ error: 'Failed to retrieve parents' });
    }
    res.json(data);
  });
});

app.post('/parents', (req, res) => {

  const p = req.body;
  const value = [p.Parent_ID,p.Name,p.Date_Of_Birth,p.National_ID,p.Mobile_No,p.Email,p.Address,p.Gender];

  const query = 'INSERT INTO parents VALUES (?)';
  db.query(query,[value], (err, data) => {
    if (err) {
      console.error('Error fetching parents:', err);
      return res.status(500).json({ error: 'Failed to retrieve parents' });
    }
    res.json(data);
  });
});

app.get('/faculties', (req, res) => {
  const query = 'SELECT * FROM Faculties ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching faculties:', err);
      return res.status(500).json({ error: 'Failed to retrieve faculties' });
    }
    res.json(data);
  });
});

app.get('/departments', (req, res) => {
  const query = 'SELECT * FROM Departments ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching departments:', err);
      return res.status(500).json({ error: 'Failed to retrieve departments' });
    }
    res.json(data);
  });
});

  




app.get('/professors', (req, res) => {
  const query = 'SELECT * FROM Professors ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching professors:', err);
      return res.status(500).json({ error: 'Failed to retrieve professors' });
    }
    res.json(data);
  });
});
  


app.get('/courses', (req, res) => {
  const query = 'SELECT * FROM Courses ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching courses:', err);
      return res.status(500).json({ error: 'Failed to retrieve courses' });
    }
    res.json(data);
  });
});


app.get('/department-courses', (req, res) => {
  const query = 'SELECT * FROM Department_Courses ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching Department Courses:', err);
      return res.status(500).json({ error: 'Failed to retrieve Department Courses' });
    }
    res.json(data);
  });
});
  

app.get('/sections', (req, res) => {
  const query = 'SELECT * FROM Sections ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching sections:', err);
      return res.status(500).json({ error: 'Failed to retrieve sections' });
    }
    res.json(data);
  });
});

app.get('/login', (req, res) => {
  const query = 'SELECT * FROM login ' + req.query.condition;
  db.query(query, (err, data) => {
    if (err) {
      console.error('Error fetching login:', err);
      return res.status(500).json({ error: 'Failed to retrieve login' });
    }
    res.json(data);
  });
});

app.listen(8000, () => {
  console.log('Server listening on port 8000');
});