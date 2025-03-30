const express = require('express');
const connectDB = require('./src/config/db');

const app = express();

connectDB();

app.listen(5001, () => console.log(
    'Server running on port 5000'
));