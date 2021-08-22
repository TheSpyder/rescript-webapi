'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__CustomEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CustomEvent.js");

var $$event = new CustomEvent("my-event");

Curry._1(Webapi__Dom__CustomEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
