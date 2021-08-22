'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__FocusEvent = require("../../../src/Webapi/Dom/Webapi__Dom__FocusEvent.js");

var $$event = new FocusEvent("my-event");

Curry._1(Webapi__Dom__FocusEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
