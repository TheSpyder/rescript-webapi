'use strict';


window.history.scrollRestoration = true;

window.history.back();

window.history.forward();

window.history.go(-2);

window.history.pushState(window.history.state, "My title", "http://...");

window.history.replaceState(window.history.state, "My title", "http://...");

/*  Not a pure module */
