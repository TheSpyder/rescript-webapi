open Webapi

/* Adapted from https://developer.mozilla.org/en-US/docs/Web/API/WebSocket#examples */
let _ = {
  // Create WebSocket connection.
  let socket = WebSocket.make("ws://localhost:8080")

  // Connection opened
  socket->WebSocket.addOpenListener(_ => {
    socket->WebSocket.sendText("Hello Server!")
  })

  // Listen for messages
  socket->WebSocket.addMessageListener(event => {
    Js.log2("Message from server ", event.data)
  })
}
