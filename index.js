const express = require('express');
const app = express();

const http = require('http');

app.get('/',(req,res)=>{
    res.send("node is running");
});

//socket logic

const socketio = require('socket.io')(http)

socketio.on("connection", (userSocket) => {
    userSocket.on("send_message", (data) => {
        userSocket.broadcast.emit("receive_message", data)
    });
});

app.listen(3000,()=>console.log("app is running in the 3000... port"));