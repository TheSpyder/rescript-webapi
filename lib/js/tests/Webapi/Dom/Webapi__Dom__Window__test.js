'use strict';


var el = document.createElement("strong");

var $$event = document.createEvent("my-event");

function handleClick(param) {
  console.log("asd");
}

window.location = "http://reason.ml";

window.name = "new name";

window.status = "new status";

window.alert("hello!");

window.blur();

var idleId = window.requestIdleCallback(function (param) {
      
    });

window.cancelIdleCallback(idleId);

window.close();

window.confirm("is ok?");

window.focus();

window.getComputedStyle(el);

window.getComputedStyle(el, "hover");

window.getSelection();

window.matchMedia("max-height: 400");

window.moveBy(10, -10);

window.moveTo(120, 300);

window.open("http://...", "my window", "menubar=yes");

window.open("http://...", "my window", undefined);

window.postMessage("my message", "*");

window.print();

window.prompt("type you password, please?");

window.prompt("type password or use this?", "password");

window.requestIdleCallback((function (param) {
        
      }), {
      timeout: 1000
    });

window.resizeBy(10, -10);

window.resizeTo(120, 300);

window.scroll(0.0, 0.0);

window.scrollBy(10.0, -10.0);

window.scrollTo(120.5, 300.3);

window.scrollTo({
      left: 1.0,
      top: 1.0,
      behavior: "smooth"
    });

window.stop();

window.onload = (function (param) {
    console.log("load");
  });

exports.el = el;
exports.$$event = $$event;
exports.handleClick = handleClick;
exports.idleId = idleId;
/* el Not a pure module */
