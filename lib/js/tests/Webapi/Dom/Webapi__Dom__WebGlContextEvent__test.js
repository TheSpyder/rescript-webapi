'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__WebGlContextEvent = require("../../../src/Webapi/Dom/Webapi__Dom__WebGlContextEvent.js");

var $$event = new WebGLContextEvent("my-event");

Curry._1(Webapi__Dom__WebGlContextEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
