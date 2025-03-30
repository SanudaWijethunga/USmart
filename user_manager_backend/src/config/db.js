const mongoose = require('mongoose');
require('dotenv').config();


const connect = async () => {
    try{
        await mongoose.connect(process.env.MONGODB_URL);
        console.log('MongoDB connected.')
    }
    catch(error){
        console.error(error.message);
        process.exit(1);
    }
}

module.exports = connect;