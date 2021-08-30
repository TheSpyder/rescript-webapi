'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__TouchEvent = require("../../../src/Webapi/Dom/Webapi__Dom__TouchEvent.js");

var $$event = new TouchEvent("my-event");

Curry._1(Webapi__Dom__TouchEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
