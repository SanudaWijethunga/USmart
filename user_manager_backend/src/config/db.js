const mongoose = require('mongoose');

const connect = async () => {
    try{
        await mongoose.connect(process.env.MONGO_URL);
        console.log('MongoDB connected.')
    }
    catch(error){
        console.error(error.message);
        process.exit(1);
    }
}

module.exports = connect;