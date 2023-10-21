'use strict';


var length = window.history.length;

var scrollRestorationTest = window.history.scrollRestoration;

window.history.scrollRestoration = "auto";

window.history.scrollRestoration = "manual";

var stateTest = window.history.state;

var match = window.history.scrollRestoration;

if (match === "manual") {
  console.log("manual scroll");
} else {
  console.log("auto scroll");
}

window.history.back();

window.history.forward();

window.history.go(-2);

window.history.pushState(window.history.state, "My title", "http://...");

window.history.replaceState(window.history.state, "My title", "http://...");

exports.length = length;
exports.scrollRestorationTest = scrollRestorationTest;
exports.stateTest = stateTest;
/* length Not a pure module */
