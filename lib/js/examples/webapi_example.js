'use strict';


var socket = new WebSocket("ws://localhost:8080");

socket.addEventListener("open", (function (param) {
        socket.send("Hello Server!");
      }));

socket.addEventListener("message", (function ($$event) {
        console.log("Message from server ", $$event.data);
      }));

/* socket Not a pure module */
