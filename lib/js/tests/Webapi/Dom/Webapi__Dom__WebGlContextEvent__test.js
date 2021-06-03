'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__WebGlContextEvent$Webapi = require("../../../src/Dom/Webapi__Dom__WebGlContextEvent.js");

var $$event = new WebGLContextEvent("my-event");

Curry._1(Webapi__Dom__WebGlContextEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
