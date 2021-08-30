'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__AnimationEvent = require("../../../src/Webapi/Dom/Webapi__Dom__AnimationEvent.js");

var $$event = new AnimationEvent("my-event");

Curry._1(Webapi__Dom__AnimationEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
