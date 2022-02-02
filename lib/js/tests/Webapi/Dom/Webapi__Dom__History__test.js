'use strict';


window.history.scrollRestoration = "auto";

window.history.scrollRestoration = "manual";

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

/*  Not a pure module */
