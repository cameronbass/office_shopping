import {Socket, Presence} from "phoenix"

let user = document.getElementById("User").innerText
let socket = new Socket("/socket", {params: {user: user}})
socket.connect()

// channel
let shop = socket.channel("shop:lobby", {})

shop.join()
