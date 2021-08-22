'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__BeforeUnloadEvent = require("../../../src/Webapi/Dom/Webapi__Dom__BeforeUnloadEvent.js");

var $$event = new BeforeUnloadEvent("my-event");

Curry._1(Webapi__Dom__BeforeUnloadEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
