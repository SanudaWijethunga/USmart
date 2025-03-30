const express = require('express');
const dotenv = require('dotenv');
const cors = require('cors');
const bodyParser = require('body-parser');

const connectDB = require('./src/config/db');
const authRoutes = require('./src/routes/userRoutes');

dotenv.config();
connectDB();

const app = express();

app.use(cors());
app.use(bodyParser.json());
app.use("/api/auth", authRoutes);

app.listen(5001, () => console.log(
    'Server running on port 5000'
));