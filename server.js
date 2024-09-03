const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(cors());

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'college_search',
    password: 'Admin',
    port: 5432,
});

app.get('/colleges', async (req, res) => {
    try {
        const location = req.query.location;
        const result = await pool.query(
            'SELECT * FROM colleges WHERE location ILIKE $1',
            [`%${location}%`]
        );
        res.json(result.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Server error');
    }
});

app.get('/courses/:college_id', async (req, res) => {
    try {
        const { college_id } = req.params;
        const result = await pool.query(
            'SELECT course_name FROM courses WHERE college_id = $1',
            [college_id]
        );
        res.json(result.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Server error');
    }
});

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});