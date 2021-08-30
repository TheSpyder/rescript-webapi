'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__InputEvent = require("../../../src/Webapi/Dom/Webapi__Dom__InputEvent.js");

var $$event = new InputEvent("my-event");

Curry._1(Webapi__Dom__InputEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
