'use strict';

var Js_exn = require("rescript/lib/js/js_exn.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var TestHelpers = require("../../testHelpers.js");
var Webapi__Dom__Document = require("../../../src/Webapi/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__HtmlElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlElement.js");
var Webapi__Dom__HtmlFormElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlFormElement.js");
var Webapi__Dom__HtmlOptionElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlOptionElement.js");
var Webapi__Dom__HtmlSelectElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlSelectElement.js");
var Webapi__Dom__HtmlFormControlsCollection = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlFormControlsCollection.js");

var partial_arg = document;

function createElement(param) {
  return partial_arg.createElement(param);
}

var partial_arg$1 = document;

function createTextNode(param) {
  return partial_arg$1.createTextNode(param);
}

function createInput(param) {
  return createElement("input");
}

function createLabelWithText(text) {
  var el = createElement("label");
  var textNode = createTextNode(text);
  el.appendChild(textNode);
  return el;
}

var form = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__HtmlFormElement.ofElement(createElement("form")));

var usernameInput = createElement("input");

usernameInput.setAttribute("type", "text");

usernameInput.setAttribute("name", "username");

var usernameLabel = createLabelWithText("Username:");

usernameLabel.appendChild(usernameInput);

var passwordInput = createElement("input");

passwordInput.setAttribute("type", "password");

passwordInput.setAttribute("name", "password");

var passwordLabel = createLabelWithText("Password:");

passwordLabel.appendChild(passwordInput);

var radioInput1 = createElement("input");

radioInput1.setAttribute("type", "radio");

radioInput1.setAttribute("name", "radiogroup");

radioInput1.setAttribute("value", "one");

radioInput1.setAttribute("checked", "true");

var radioLabel1 = createLabelWithText("Choice 1:");

radioLabel1.appendChild(radioInput1);

var radioInput2 = createElement("input");

radioInput2.setAttribute("type", "radio");

radioInput2.setAttribute("name", "radiogroup");

radioInput2.setAttribute("value", "two");

var radioLabel2 = createLabelWithText("Choice 2:");

radioLabel2.appendChild(radioInput2);

var select = createElement("select");

select.setAttribute("name", "select");

var selectLabel = createLabelWithText("Select:");

selectLabel.appendChild(select);

var usernameContainer = createElement("div");

var passwordContainer = createElement("div");

var radioContainer = createElement("div");

var selectContainer = createElement("div");

usernameContainer.appendChild(usernameLabel);

passwordContainer.appendChild(passwordLabel);

radioContainer.appendChild(radioLabel1);

radioContainer.appendChild(radioLabel2);

selectContainer.appendChild(selectLabel);

form.appendChild(usernameContainer);

form.appendChild(passwordContainer);

form.appendChild(radioContainer);

form.appendChild(selectContainer);

var body = TestHelpers.unsafelyUnwrapOption(Belt_Option.flatMap(Webapi__Dom__Document.asHtmlDocument(document), (function (prim) {
            return Caml_option.nullable_to_opt(prim.body);
          })));

body.appendChild(form);

var collection = form.elements;

console.log("HtmlFormElement.elements:", collection);

var len = collection.length;

console.log("HtmlFormControlsCollection.length:", len);

var el0 = collection.item(0);

console.log("HtmlFormControlsCollection.item:", (el0 == null) ? undefined : Caml_option.some(el0));

var el0$1 = Webapi__Dom__HtmlFormControlsCollection.namedItem(collection, "username");

console.log("HtmlFormControlsCollection.namedItem:", el0$1);

var el1 = collection.item(1);

console.log("HtmlFormControlsCollection.length:", (el1 == null) ? undefined : Caml_option.some(el1));

var el1$1 = Webapi__Dom__HtmlFormControlsCollection.namedItem(collection, "password");

console.log("HtmlFormControlsCollection.namedItem:", el1$1);

var radioNodeList = collection.item(2);

console.log("HtmlFormControlsCollection.namedItem:", (radioNodeList == null) ? undefined : Caml_option.some(radioNodeList));

var radioNodeList$1 = Webapi__Dom__HtmlFormControlsCollection.namedItem(collection, "radiogroup");

console.log("HtmlFormControlsCollection.namedItem:", radioNodeList$1);

var radioNodeList$2 = TestHelpers.unsafelyUnwrapOption(radioNodeList$1);

if (radioNodeList$2.TAG === /* RadioNodeList */0) {
  console.log("RadioNodeList.value", radioNodeList$2._0.value);
} else {
  Js_exn.raiseError("incorrect namedItem return value");
}

var select$1 = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__HtmlSelectElement.ofElement(select));

var opts = select$1.options;

console.log("HtmlSelectElement.options:", opts);

opts.length = 3;

console.log("collection length:", opts.length);

opts[0] = null;

console.log("collection length:", opts.length);

opts[2] = Webapi__Dom__HtmlOptionElement.ofElement(createElement("option"));

console.log("collection length:", opts.length);

opts.length = 0;

var opt1 = createElement("option");

opt1.setAttribute("value", "1");

opt1.appendChild(createTextNode("opt1"));

({
    NAME: "Option",
    VAL: Webapi__Dom__HtmlOptionElement.ofElement(opt1)
  });

opts.selectedIndex = 0;

console.log("collection length:", opts.length);

console.log("HtmlOptionsCollection.setSelectedIndex", undefined);

var opt2 = createElement("option");

opt2.setAttribute("value", "2");

opt2.appendChild(createTextNode("opt2"));

var item = opts.item(0);

console.log("HtmlOptionsCollection.item:", (item == null) ? undefined : Caml_option.some(item));

console.log("collection length:", opts.length);

opts.add(({
        NAME: "Option",
        VAL: Webapi__Dom__HtmlOptionElement.ofElement(opt2)
      }).VAL, 0);

var item$1 = opts.item(0);

console.log("HtmlOptionsCollection.add:", (item$1 == null) ? undefined : Caml_option.some(item$1));

console.log("collection length:", opts.length);

console.log("selected index", opts.selectedIndex);

var opt3 = createElement("option");

opt3.setAttribute("value", "3");

opt3.appendChild(createTextNode("opt3"));

opts.add(({
        NAME: "Option",
        VAL: Webapi__Dom__HtmlOptionElement.ofElement(opt3)
      }).VAL, ({
        NAME: "Element",
        VAL: Webapi__Dom__HtmlElement.ofElement(opt2)
      }).VAL);

var item$2 = opts.item(0);

console.log("HtmlOptionsCollection.addBeforeElement:", (item$2 == null) ? undefined : Caml_option.some(item$2));

console.log("collection length:", opts.length);

var item$3 = opts.selectedIndex;

console.log("HtmlOptionsCollection.selectedIndex:", item$3);

var item$4 = opts.selectedIndex;

console.log("HtmlOptionsCollection.selectedIndex:", item$4);

opts.remove(0);

console.log("collection length:", opts.length);

function test_data(formElement) {
  return new FormData(formElement).get("foo");
}

var formEl = form;

var selectedIndex;

exports.createElement = createElement;
exports.createTextNode = createTextNode;
exports.createInput = createInput;
exports.createLabelWithText = createLabelWithText;
exports.form = form;
exports.usernameInput = usernameInput;
exports.usernameLabel = usernameLabel;
exports.passwordInput = passwordInput;
exports.passwordLabel = passwordLabel;
exports.radioInput1 = radioInput1;
exports.radioLabel1 = radioLabel1;
exports.radioInput2 = radioInput2;
exports.radioLabel2 = radioLabel2;
exports.selectLabel = selectLabel;
exports.usernameContainer = usernameContainer;
exports.passwordContainer = passwordContainer;
exports.radioContainer = radioContainer;
exports.selectContainer = selectContainer;
exports.formEl = formEl;
exports.body = body;
exports.collection = collection;
exports.len = len;
exports.el0 = el0$1;
exports.el1 = el1$1;
exports.radioNodeList = radioNodeList$1;
exports.select = select$1;
exports.opts = opts;
exports.opt1 = opt1;
exports.selectedIndex = selectedIndex;
exports.opt2 = opt2;
exports.opt3 = opt3;
exports.item = item$4;
exports.test_data = test_data;
/* partial_arg Not a pure module */
