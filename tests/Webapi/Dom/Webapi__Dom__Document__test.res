open Webapi.Dom
open Document

let el: Dom.element = document->createElement("strong")

let () = switch document->activeElement {
| Some(e) => Js.log(e)
| None => ()
}

let characterSet: string = document->characterSet
let compatMode: compatMode = document->compatMode
let doctype: Dom.documentType = document->doctype
let documentElement: Dom.element = document->documentElement
let documentURI: string = document->documentURI
let hidden: bool = document->hidden
let implementation: Dom.domImplementation = document->implementation
let lastStyleSheetSet: string = document->lastStyleSheetSet
let pointerLockElement: option<Dom.element> = document->pointerLockElement
let preferredStyleSheetSet: string = document->preferredStyleSheetSet
let scrollingElement: option<Dom.element> = document->scrollingElement
let selectedStyleSheetSet: string = document->selectedStyleSheetSet
setSelectedStyleSheetSet(document, "muh-stylesheet")
let styleSheets: array<Dom.cssStyleSheet> = document->styleSheets
let styleSheetSets: array<string> = document->styleSheetSets
let visibilityState: visibilityState = document->visibilityState

let adoptNode: Dom.element = document->adoptNode(el)
let createAttribute: Dom.attr = document->createAttribute("data-foo")
let createAttributeNS: Dom.attr = document->createAttributeNS("http://...", "foo")
let createComment: Dom.comment = document->createComment("witty comment")
let createDocumentFragment: Dom.documentFragment = document->createDocumentFragment
let createElement: Dom.element = document->createElement("div")
let elementWithOptions: Dom.element =
  document->createElementWithOptions(
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let elementNS: Dom.element = document->createElementNS("http://...", "foo")
let elementNsWithOptions: Dom.element =
  document->createElementNSWithOptions(
    "http://...",
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let createEvent: Dom.event = document->createEvent("MyCustomEvent")
let createNodeIterator: Dom.nodeIterator = document->createNodeIterator(el)
let createNodeIteratorWithWhatToShow: Dom.nodeIterator =
  document->createNodeIteratorWithWhatToShow(el, WhatToShow._All)
let createNodeIteratorWithWhatToShowFilter: Dom.nodeIterator =
  document->createNodeIteratorWithWhatToShowFilter(
    el,
    {
      open WhatToShow
      many(list{_Element, _Attribute})
    },
    NodeFilter.make(_ => 0),
  )
let createRange: Dom.range = document->createRange
let createTextNode: Dom.text = document->createTextNode("Very reasonable!")
let createTreeWalker: Dom.treeWalker = document->createTreeWalker(el)
let createTreeWalkerWithWhatToShow: Dom.treeWalker =
  document->createTreeWalkerWithWhatToShow(el, WhatToShow._All)
let createTreeWalkerWithWhatToShowFilter: Dom.treeWalker =
  document->createTreeWalkerWithWhatToShowFilter(
    el,
    {
      open WhatToShow
      many(list{_Element, _Attribute})
    },
    NodeFilter.make(_ => 0),
  )
switch document->elementFromPoint(0, 0) {
| Some(el) => Js.log(el)
| None => ()
}
let elementsFromPoint: array<Dom.element> = document->elementsFromPoint(0, 0)
let enableStyleSheetsForSet: unit = document->enableStyleSheetsForSet("my-stylesheet-set")
let exitPointerLock: unit = document->exitPointerLock
let getAnimations: array<Dom.animation> = document->getAnimations
let getElementsByClassName: Dom.htmlCollection = document->getElementsByClassName("lstlisting")
let getElementsByTagName: Dom.htmlCollection = document->getElementsByTagName("code")
let getElementsByTagNameNS: Dom.htmlCollection =
  document->getElementsByTagNameNS("http://...", "foo")
let hasFocus: bool = document->hasFocus
let importNode: Dom.element = document->importNode(el)
let importNodeDeep: Dom.element = document->importNodeDeep(el)
let getElementById: option<Dom.element> = document->getElementById("root")
let querySelector: option<Dom.element> = document->querySelector(".lstlisting")
let querySelectorAll: Dom.nodeList = document->querySelectorAll(".lstlisting")
