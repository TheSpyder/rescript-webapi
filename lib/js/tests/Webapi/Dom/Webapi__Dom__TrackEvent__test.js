'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__TrackEvent = require("../../../src/Webapi/Dom/Webapi__Dom__TrackEvent.js");

var $$event = new TrackEvent("my-event");

Curry._1(Webapi__Dom__TrackEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
