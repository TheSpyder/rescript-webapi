'use strict';

var Js_json = require("rescript/lib/js/js_json.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Fetch = require("../src/Webapi/Webapi__Fetch.js");

fetch("/api/hellos/1").then(function (prim) {
        return prim.text();
      }).then(function (text) {
      return Promise.resolve((console.log(text), undefined));
    });

fetch("/api/hello", Webapi__Fetch.RequestInit.make("Post", undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)).then(function (prim) {
        return prim.text();
      }).then(function (text) {
      return Promise.resolve((console.log(text), undefined));
    });

fetch("/api/fruit").then(function (prim) {
            return prim.json();
          }).then(function (json) {
          return Promise.resolve(Js_json.decodeArray(json));
        }).then(function (opt) {
        return Promise.resolve(Belt_Option.getExn(opt));
      }).then(function (items) {
      return Promise.resolve(items.map(function (item) {
                      return Belt_Option.getExn(Js_json.decodeString(item));
                    }));
    });

var payload = {};

payload["hello"] = "world";

fetch("/api/hello", Webapi__Fetch.RequestInit.make("Post", {
            "Content-Type": "application/json"
          }, Caml_option.some(JSON.stringify(payload)), undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)).then(function (prim) {
      return prim.json();
    });

var formData = new FormData();

formData.append("image0", {
      type: "image/jpg",
      uri: "path/to/it",
      name: "image0.jpg"
    }, undefined);

fetch("/api/upload", Webapi__Fetch.RequestInit.make("Post", {
            Accept: "*"
          }, Caml_option.some(formData), undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)).then(function (prim) {
      return prim.json();
    });

var controller = new AbortController();

fetch("/api/fruit", Webapi__Fetch.RequestInit.make(undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, Caml_option.some(controller.signal), undefined));

controller.abort();

/*  Not a pure module */
