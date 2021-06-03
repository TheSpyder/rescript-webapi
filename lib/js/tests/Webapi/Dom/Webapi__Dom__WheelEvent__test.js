'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__WheelEvent$Webapi = require("../../../src/Dom/Webapi__Dom__WheelEvent.js");

var $$event = new WheelEvent("my-event");

Curry._1(Webapi__Dom__WheelEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Webapi__Dom__WheelEvent$Webapi.deltaMode($$event);

exports.$$event = $$event;
/* event Not a pure module */
