'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__TimeEvent = require("../../../src/Webapi/Dom/Webapi__Dom__TimeEvent.js");

var $$event = new TimeEvent("my-event");

Curry._1(Webapi__Dom__TimeEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
