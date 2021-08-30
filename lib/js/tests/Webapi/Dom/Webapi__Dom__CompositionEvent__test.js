'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__CompositionEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CompositionEvent.js");

var $$event = new CompositionEvent("my-event");

Curry._1(Webapi__Dom__CompositionEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
