const app = require('express')()
const http = require('http').createServer(app)
app.get('/', (req, res) => {
   res.send("Node Server is running bitches")
})

const socketio = require('socket.io')(http)

socketio.on('connection', (userSocket)=> {
    userSocket.on('send_message', (data) => {
        userSocket.broadcast.emit('Recieved message: ', data)
    })
})

http.listen('8080')

