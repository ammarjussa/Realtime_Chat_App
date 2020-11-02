const app = require('express')()
const http = require('http').createServer(app)
app.get('/', (req, res) => {
   res.send("Node Server is running bitches")
})

const PORT = process.env.PORT || 8080
const socketio = require('socket.io')(http)

socketio.on('connection', (userSocket)=> {
    userSocket.on('send_message', (data) => {
        userSocket.broadcast.emit('Recieved message: ', data)
    })
})

http.listen(PORT)

