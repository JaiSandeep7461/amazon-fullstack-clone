// IMPORTS FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');

const PORT = 3000;
const app = express();

const DB = "mongodb+srv://Sandy:Sandy_4321@cluster0.pedtwrj.mongodb.net/?retryWrites=true&w=majority";

//IMPORTS FROM OTHER FILES


//middle ware
app.use(express.json());
app.use(authRouter); 
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//connections
mongoose.connect(DB).then(()=>{
    console.log('Connection Successfull');

}).catch(e=>{
    console.log(e); 
});

app.listen(PORT,"0.0.0.0",()=>{
    console.log(`Connected at port ${PORT}`);
});



//INIT




