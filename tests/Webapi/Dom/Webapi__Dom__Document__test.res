open Webapi.Dom
open Document

let el = document->createElement("strong")

let _ = switch (document->activeElement) {
  | Some(e) => Js.log(e)
  | None => ()
}

let _ = document->characterSet
let _ = document->compatMode
let _ = document->doctype
let _ = document->documentElement
let _ = document->documentURI
let _ = document->hidden
let _ = document->implementation
let _ = document->lastStyleSheetSet
let _ = document->pointerLockElement
let _ = document->preferredStyleSheetSet
let _ = document->scrollingElement
let _ = document->selectedStyleSheetSet
let _ = setSelectedStyleSheetSet(document, "muh-stylesheet")
let _ = document->styleSheets
let _ = document->styleSheetSets
let _ = document->visibilityState

let _ = document->adoptNode(el)
let _ = document->createAttribute("data-foo")
let _ = document->createAttributeNS("http://...", "foo")
let _ = document->createComment("witty comment")
let _ = document->createDocumentFragment
let _ = document->createElement("div")
let _ =
  document->createElementWithOptions(
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let _ = document->createElementNS("http://...", "foo")
let _ =
  document->createElementNSWithOptions(
    "http://...",
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let _ = document->createEvent("MyCustomEvent")
let _ = document->createNodeIterator(el)
let _ = document->createNodeIteratorWithWhatToShow(el, WhatToShow._All)
let _ = document->createNodeIteratorWithWhatToShowFilter(
  el,
  {
    open WhatToShow
    many(list{_Element, _Attribute})
  },
  NodeFilter.make(_ => 0),
)
let _ = document->createRange
let _ = document->createTextNode("Very reasonable!")
let _ = document->createTreeWalker(el)
let _ = document->createTreeWalkerWithWhatToShow(el, WhatToShow._All)
let _ = document->createTreeWalkerWithWhatToShowFilter(
  el,
  {
    open WhatToShow
    many(list{_Element, _Attribute})
  },
  NodeFilter.make(_ => 0),
)
switch (document->elementFromPoint(0, 0)) {
  | Some(el) => Js.log(el)
  | None => ()
}
let _ = document->elementsFromPoint(0, 0)
let _ = document->enableStyleSheetsForSet("my-stylesheet-set")
let _ = document->exitPointerLock
let _ = document->getAnimations
let _ = document->getElementsByClassName("lstlisting")
let _ = document->getElementsByTagName("code")
let _ = document->getElementsByTagNameNS("http://...", "foo")
let _ = document->hasFocus
let _ = document->importNode(el)
let _ = document->importNodeDeep(el)
/* TODO: These get dead code eliminated
   let _ = registerElement(document, "my-component");
   let _ = registerElementWithOptions(document, "my-component", [%bs.raw "{}"]);
 */
let _ = document->getElementById("root")
let _ = document->querySelector(".lstlisting")
let _ = document->querySelectorAll(".lstlisting")
