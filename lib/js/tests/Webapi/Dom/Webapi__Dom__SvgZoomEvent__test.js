'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__SvgZoomEvent = require("../../../src/Webapi/Dom/Webapi__Dom__SvgZoomEvent.js");

var $$event = new SVGZoomEvent("my-event");

Curry._1(Webapi__Dom__SvgZoomEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
