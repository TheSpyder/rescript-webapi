'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__PopStateEvent = require("../../../src/Webapi/Dom/Webapi__Dom__PopStateEvent.js");

var $$event = new PopStateEvent("my-event");

Curry._1(Webapi__Dom__PopStateEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
