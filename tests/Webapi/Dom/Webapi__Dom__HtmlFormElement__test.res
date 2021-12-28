open Webapi.Dom
open Webapi.FormData
open Webapi.Dom.HtmlFormElement

@val
@scope("console")
external jsAssert: (bool, string) => unit = "assert"

let createElement = Document.createElement(document)
let createTextNode = Document.createTextNode(document)
let createInput = () => createElement("input")
let createLabelWithText = text => {
  let el = createElement("label")
  let textNode = createTextNode(text)
  Element.appendChild(el, textNode)
  el
}

let formEl = createElement("form")
let form = formEl->ofElement->TestHelpers.unsafelyUnwrapOption

let usernameInput = createInput()
Element.setAttribute(usernameInput, "type", "text")
Element.setAttribute(usernameInput, "name", "username")
Element.setAttribute(usernameInput, "value", "username")

let usernameLabel = createLabelWithText("Username:")
Element.appendChild(usernameLabel, usernameInput)

let passwordInput = createInput()
Element.setAttribute(passwordInput, "type", "password")
Element.setAttribute(passwordInput, "name", "password")
Element.setAttribute(passwordInput, "value", "password")

let passwordLabel = createLabelWithText("Password:")
Element.appendChild(passwordLabel, passwordInput)

let radioInput1 = createInput()
Element.setAttribute(radioInput1, "type", "radio")
Element.setAttribute(radioInput1, "name", "radiogroup")
Element.setAttribute(radioInput1, "value", "one")
Element.setAttribute(radioInput1, "checked", "true")

let radioLabel1 = createLabelWithText("Choice 1:")
Element.appendChild(radioLabel1, radioInput1)

let radioInput2 = createInput()
Element.setAttribute(radioInput2, "type", "radio")
Element.setAttribute(radioInput2, "name", "radiogroup")
Element.setAttribute(radioInput2, "value", "two")
// Element.setAttribute(radioInput2, "checked", "true");

let radioLabel2 = createLabelWithText("Choice 2:")
Element.appendChild(radioLabel2, radioInput2)

let select = createElement("select")
Element.setAttribute(select, "name", "select")
let selectLabel = createLabelWithText("Select:")
Element.appendChild(selectLabel, select)

let usernameContainer = createElement("div")
let passwordContainer = createElement("div")
let radioContainer = createElement("div")
let selectContainer = createElement("div")

Element.appendChild(usernameContainer, usernameLabel)
Element.appendChild(passwordContainer, passwordLabel)
Element.appendChild(radioContainer, radioLabel1)
Element.appendChild(radioContainer, radioLabel2)
Element.appendChild(selectContainer, selectLabel)
Element.appendChild(formEl, usernameContainer)
Element.appendChild(formEl, passwordContainer)
Element.appendChild(formEl, radioContainer)
Element.appendChild(formEl, selectContainer)

let body =
  Document.asHtmlDocument(document)
  ->Belt.Option.flatMap(HtmlDocument.body)
  ->TestHelpers.unsafelyUnwrapOption

Element.appendChild(body, formEl)

let collection = elements(form)

Js.log2("HtmlFormElement.elements:", collection)
jsAssert(!Js.testAny(collection), "collection exists")

let len = HtmlFormControlsCollection.length(collection)
Js.log2("HtmlFormControlsCollection.length:", len)
jsAssert(len == 5, "initial length is 5")

let el0 = HtmlFormControlsCollection.item(collection, 0)
Js.log2("HtmlFormControlsCollection.item:", el0)
jsAssert(Belt.Option.isSome(el0), "item at index 0 exists")

let el0 = HtmlFormControlsCollection.namedItem(collection, "username")
Js.log2("HtmlFormControlsCollection.namedItem:", el0)
jsAssert(Belt.Option.isSome(el0), "namedItem 'username' exists")

let el1 = HtmlFormControlsCollection.item(collection, 1)
Js.log2("HtmlFormControlsCollection.item:", el1)
jsAssert(Belt.Option.isSome(el1), "item at index 1 exists")

let el1 = HtmlFormControlsCollection.namedItem(collection, "password")
Js.log2("HtmlFormControlsCollection.namedItem:", el1)
jsAssert(Belt.Option.isSome(el1), "namedItem 'password' exists")

let radioNodeList = HtmlFormControlsCollection.item(collection, 2)
Js.log2("HtmlFormControlsCollection.namedItem:", radioNodeList)
jsAssert(Belt.Option.isSome(radioNodeList), "item at index 2 exists")

let radioNodeList = HtmlFormControlsCollection.namedItem(collection, "radiogroup")
Js.log2("HtmlFormControlsCollection.namedItem:", radioNodeList)
jsAssert(Belt.Option.isSome(radioNodeList), "namedItem 'radiogroup' exists")

switch TestHelpers.unsafelyUnwrapOption(radioNodeList) {
| Button(_)
| FieldSet(_)
| Input(_)
| Object(_)
| Output(_)
| Select(_)
| TextArea(_) =>
  Js.Exn.raiseError("incorrect namedItem return value")
| RadioNodeList(radioNodeList) =>
  Js.log2("RadioNodeList.value", RadioNodeList.value(radioNodeList))
  jsAssert(RadioNodeList.value(radioNodeList) == "one", "RadioNodeList.value is one")
}

let select = HtmlSelectElement.ofElement(select)->TestHelpers.unsafelyUnwrapOption

let opts = HtmlSelectElement.options(select)
Js.log2("HtmlSelectElement.options:", opts)
jsAssert(!Js.testAny(opts), "HtmlSelectElement.options returns something")

HtmlOptionsCollection.setLength(opts, 3)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
jsAssert(HtmlOptionsCollection.length(opts) == 3, "setLength works")
HtmlOptionsCollection.clearItem(opts, 0)
jsAssert(HtmlOptionsCollection.length(opts) == 2, "clearItem works")
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
HtmlOptionsCollection.setItem(
  opts,
  2,
  createElement("option")->HtmlOptionElement.ofElement->Belt.Option.getUnsafe,
)
jsAssert(HtmlOptionsCollection.length(opts) == 3, "setItem works")
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

HtmlOptionsCollection.setLength(opts, 0)

let opt1 = createElement("option")
Element.setAttribute(opt1, "value", "1")
Element.appendChild(opt1, createTextNode("opt1"))

HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt1->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=?None,
)
HtmlOptionsCollection.setSelectedIndex(opts, 0)
jsAssert(HtmlOptionsCollection.selectedIndex(opts) == 0, "setSelectedIndex works")
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

let opt2 = createElement("option")
Element.setAttribute(opt2, "value", "2")
Element.appendChild(opt2, createTextNode("opt2"))

let item = HtmlOptionsCollection.item(opts, 0)
jsAssert(Belt.Option.isSome(item), "HtmlOptionsCollection.item should return an item")
Js.log2("HtmlOptionsCollection.item:", item)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
jsAssert(HtmlOptionsCollection.length(opts) == 1, "HtmlOptionsCollection.length should be 1")

HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt2->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Index(0),
)
jsAssert(HtmlOptionsCollection.length(opts) == 2, "HtmlOptionsCollection.length should be 2")

let item = HtmlOptionsCollection.item(opts, 0)
jsAssert(Belt.Option.isSome(item), "HtmlOptionsCollection.add works")
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
Js.log2("selected index", HtmlOptionsCollection.selectedIndex(opts))

HtmlOptionsCollection.clearSelectedIndex(opts)
jsAssert(HtmlOptionsCollection.selectedIndex(opts) == -1, "HtmlOptionsCollection.clearSelectedIndex sets index to -1")

let opt3 = createElement("option")
Element.setAttribute(opt3, "value", "3")
Element.appendChild(opt3, createTextNode("opt3"))

HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt3->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Element(opt2->HtmlElement.ofElement->Belt.Option.getUnsafe),
)
let item = HtmlOptionsCollection.item(opts, 0)
Js.log2("HtmlOptionsCollection.add w/before:", item)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

let item = HtmlOptionsCollection.selectedIndex(opts)
Js.log2("HtmlOptionsCollection.selectedIndex:", item)

let item = HtmlOptionsCollection.selectedIndex(opts)
Js.log2("HtmlOptionsCollection.selectedIndex:", item)

HtmlOptionsCollection.remove(opts, 0)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
jsAssert(HtmlOptionsCollection.length(opts) == 2, "HtmlOptionsCollection.remove works")

HtmlOptionsCollection.setLength(opts, 0)

HtmlSelectElement.setLength(select, 3)
Js.log2("collection length:", HtmlSelectElement.length(select))
jsAssert(HtmlSelectElement.length(select) == 3, "setLength works")
HtmlSelectElement.clearItem(select, 0)
jsAssert(HtmlSelectElement.length(select) == 2, "clearItem works")
Js.log2("collection length:", HtmlSelectElement.length(select))
HtmlSelectElement.setItem(
  select,
  2,
  createElement("option")->HtmlOptionElement.ofElement->Belt.Option.getUnsafe,
)
jsAssert(HtmlSelectElement.length(select) == 3, "setItem works")
Js.log2("collection length:", HtmlSelectElement.length(select))

HtmlSelectElement.setLength(select, 0)

let opt1 = createElement("option")
Element.setAttribute(opt1, "value", "1")
Element.appendChild(opt1, createTextNode("opt1"))

HtmlSelectElement.add(
  select,
  ~option=#Option(opt1->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=?None,
)
HtmlSelectElement.setSelectedIndex(select, 0)
jsAssert(HtmlSelectElement.selectedIndex(select) == 0, "setSelectedIndex works")
Js.log2("collection length:", HtmlSelectElement.length(select))

let opt2 = createElement("option")
Element.setAttribute(opt2, "value", "2")
Element.appendChild(opt2, createTextNode("opt2"))

let item = HtmlSelectElement.item(select, 0)
jsAssert(Belt.Option.isSome(item), "HtmlSelectElement.item should return an item")
Js.log2("HtmlSelectElement.item:", item)
Js.log2("collection length:", HtmlSelectElement.length(select))
jsAssert(HtmlSelectElement.length(select) == 1, "HtmlSelectElement.length should be 1")

HtmlSelectElement.add(
  select,
  ~option=#Option(opt2->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Index(0),
)
jsAssert(HtmlSelectElement.length(select) == 2, "HtmlSelectElement.length should be 2")

let item = HtmlSelectElement.item(select, 0)
jsAssert(Belt.Option.isSome(item), "HtmlSelectElement.add works")
Js.log2("collection length:", HtmlSelectElement.length(select))
Js.log2("selected index", HtmlSelectElement.selectedIndex(select))

HtmlSelectElement.clearSelectedIndex(select)
jsAssert(HtmlSelectElement.selectedIndex(select) == -1, "HtmlSelectElement.clearSelectedIndex sets index to -1")

let opt3 = createElement("option")
Element.setAttribute(opt3, "value", "3")
Element.appendChild(opt3, createTextNode("opt3"))

HtmlSelectElement.add(
  select,
  ~option=#Option(opt3->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Element(opt2->HtmlElement.ofElement->Belt.Option.getUnsafe),
)
let item = HtmlSelectElement.item(select, 0)
Js.log2("HtmlSelectElement.add w/before:", item)
Js.log2("collection length:", HtmlSelectElement.length(select))

let item = HtmlSelectElement.selectedIndex(select)
Js.log2("HtmlSelectElement.selectedIndex:", item)

let item = HtmlSelectElement.selectedIndex(select)
Js.log2("HtmlSelectElement.selectedIndex:", item)

HtmlSelectElement.removeIndex(select, 0)
Js.log2("collection length:", HtmlSelectElement.length(select))
jsAssert(HtmlSelectElement.length(select) == 2, "HtmlSelectElement.remove works")

let test_data = formElement => formElement->data->get("username")

Js.log(test_data(form))
