'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__WheelEvent = require("../../../src/Webapi/Dom/Webapi__Dom__WheelEvent.js");

var $$event = new WheelEvent("my-event");

Curry._1(Webapi__Dom__WheelEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Webapi__Dom__WheelEvent.deltaMode($$event);

exports.$$event = $$event;
/* event Not a pure module */
