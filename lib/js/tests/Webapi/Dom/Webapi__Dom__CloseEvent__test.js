'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__CloseEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CloseEvent.js");

var $$event = new CloseEvent("my-event");

Curry._1(Webapi__Dom__CloseEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
