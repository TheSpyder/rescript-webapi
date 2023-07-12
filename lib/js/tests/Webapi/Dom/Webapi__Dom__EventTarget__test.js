'use strict';

var Webapi__Dom__CustomEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CustomEvent.js");

var target = document.createElement("strong");

var $$event = new Event("my-event");

function handleClick(param) {
  console.log("asd");
}

target.addEventListener("click", handleClick);

target.addEventListener("click", handleClick, {
      passive: true,
      once: true,
      capture: false
    });

target.addEventListener("click", handleClick, true);

target.removeEventListener("click", handleClick);

target.removeEventListener("click", handleClick, {
      passive: true,
      capture: false
    });

target.removeEventListener("click", handleClick, true);

target.dispatchEvent($$event);

var customEvent = new CustomEvent("custom-event", {
      detail: {
        test: "test"
      }
    });

target.dispatchEvent(customEvent);

var Detail = {};

var EventWithDetail = Webapi__Dom__CustomEvent.Make(Detail);

var typedCustomEvent = new CustomEvent("event-with-detail", {
      detail: {
        test: "test"
      }
    });

target.dispatchEvent(typedCustomEvent);

exports.target = target;
exports.$$event = $$event;
exports.handleClick = handleClick;
exports.customEvent = customEvent;
exports.Detail = Detail;
exports.EventWithDetail = EventWithDetail;
exports.typedCustomEvent = typedCustomEvent;
/* target Not a pure module */
