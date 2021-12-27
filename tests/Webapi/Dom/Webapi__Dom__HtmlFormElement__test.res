open Webapi.Dom
open Webapi.FormData
open Webapi.Dom.HtmlFormElement

let createElement = Document.createElement(document)
let createTextNode = Document.createTextNode(document)
let createInput = () => createElement("input")
let createLabelWithText = text => {
  let el = createElement("label")
  let textNode = createTextNode(text)
  Element.appendChild(el, textNode)
  el
}

let form = createElement("form")->ofElement->TestHelpers.unsafelyUnwrapOption

let usernameInput = createInput()
Element.setAttribute(usernameInput, "type", "text")
Element.setAttribute(usernameInput, "name", "username")

let usernameLabel = createLabelWithText("Username:")
Element.appendChild(usernameLabel, usernameInput)

let passwordInput = createInput()
Element.setAttribute(passwordInput, "type", "password")
Element.setAttribute(passwordInput, "name", "password")

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

let formEl = form->asElement

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

let len = HtmlFormControlsCollection.length(collection)
Js.log2("HtmlFormControlsCollection.length:", len)

let el0 = HtmlFormControlsCollection.item(collection, 0)
Js.log2("HtmlFormControlsCollection.item:", el0)

let el0 = HtmlFormControlsCollection.namedItem(collection, "username")
Js.log2("HtmlFormControlsCollection.namedItem:", el0)

let el1 = HtmlFormControlsCollection.item(collection, 1)
Js.log2("HtmlFormControlsCollection.length:", el1)

let el1 = HtmlFormControlsCollection.namedItem(collection, "password")
Js.log2("HtmlFormControlsCollection.namedItem:", el1)

let radioNodeList = HtmlFormControlsCollection.item(collection, 2)
Js.log2("HtmlFormControlsCollection.namedItem:", radioNodeList)

let radioNodeList = HtmlFormControlsCollection.namedItem(collection, "radiogroup")
Js.log2("HtmlFormControlsCollection.namedItem:", radioNodeList)

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
}

let select = HtmlSelectElement.ofElement(select)->TestHelpers.unsafelyUnwrapOption

let opts = HtmlSelectElement.options(select)
Js.log2("HtmlSelectElement.options:", opts)

HtmlOptionsCollection.setLength(opts, 3)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
HtmlOptionsCollection.clearItem(opts, 0)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
HtmlOptionsCollection.setItem(
  opts,
  2,
  createElement("option")->HtmlOptionElement.ofElement->Belt.Option.getUnsafe,
)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

HtmlOptionsCollection.setLength(opts, 0)

let opt1 = createElement("option")
Element.setAttribute(opt1, "value", "1")
Element.appendChild(opt1, createTextNode("opt1"))

let _ = HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt1->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
)
let selectedIndex = HtmlOptionsCollection.setSelectedIndex(opts, 0)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
Js.log2("HtmlOptionsCollection.setSelectedIndex", selectedIndex)

let opt2 = createElement("option")
Element.setAttribute(opt2, "value", "2")
Element.appendChild(opt2, createTextNode("opt2"))

let item = HtmlOptionsCollection.item(opts, 0)
Js.log2("HtmlOptionsCollection.item:", item)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt2->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Index(0),
)

let item = HtmlOptionsCollection.item(opts, 0)
Js.log2("HtmlOptionsCollection.add:", item)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))
Js.log2("selected index", HtmlOptionsCollection.selectedIndex(opts))

let opt3 = createElement("option")
Element.setAttribute(opt3, "value", "3")
Element.appendChild(opt3, createTextNode("opt3"))

HtmlOptionsCollection.add(
  opts,
  ~option=#Option(opt3->HtmlOptionElement.ofElement->Belt.Option.getUnsafe),
  ~before=#Element(opt2->HtmlElement.ofElement->Belt.Option.getUnsafe),
)
let item = HtmlOptionsCollection.item(opts, 0)
Js.log2("HtmlOptionsCollection.addBeforeElement:", item)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

let item = HtmlOptionsCollection.selectedIndex(opts)
Js.log2("HtmlOptionsCollection.selectedIndex:", item)

let item = HtmlOptionsCollection.selectedIndex(opts)
Js.log2("HtmlOptionsCollection.selectedIndex:", item)

HtmlOptionsCollection.remove(opts, 0)
Js.log2("collection length:", HtmlOptionsCollection.length(opts))

let test_data = formElement => formElement->data->get("foo")
