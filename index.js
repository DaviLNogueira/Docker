const express = require('express')
let app = express();

app.use(express.static("."));

app.get("/", (req,res)=>{
    res.sendFile(__dirname + '/index.html')
})

app.listen(process.env.PORT, ()=>{ //Irá ler uma variável PORT para saber qual porta será executada
    console.log("Server is listening on port " + process.env.PORT +"")
})