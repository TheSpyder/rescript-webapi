'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__Document = require("../src/Webapi/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__HtmlImageElement = require("../src/Webapi/Dom/Webapi__Dom__HtmlImageElement.js");

var url = "";

function processImage(url) {
  return new Promise((function (resolve, reject) {
                var e = document.createElement("img");
                var maybeImg = Curry._1(Webapi__Dom__HtmlImageElement.ofElement, e);
                maybeImg.src = url;
                maybeImg.addEventListener("load", (function ($$event) {
                        return resolve($$event);
                      }));
                maybeImg.addEventListener("error", (function (error) {
                        return reject(error);
                      }));
                var body = Belt_Option.flatMap(Webapi__Dom__Document.asHtmlDocument(document), (function (prim) {
                        return Caml_option.nullable_to_opt(prim.body);
                      }));
                body.appendChild(maybeImg);
                body.removeChild(maybeImg);
                
              }));
}

var test = processImage(url).then(function ($$event) {
      var img = Curry._1(Webapi__Dom__HtmlImageElement.ofElement, $$event.currentTarget);
      var width = img.naturalWidth;
      var height = img.naturalHeight;
      console.log("width", width, "height", height);
      
    });

exports.url = url;
exports.processImage = processImage;
exports.test = test;
/* test Not a pure module */
