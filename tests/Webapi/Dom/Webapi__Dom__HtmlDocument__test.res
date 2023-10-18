open Webapi.Dom
open! HtmlDocument

let el = document->Document.createElement("strong")
let htmlDocument = document->Document.asHtmlDocument->TestHelpers.unsafelyUnwrapOption

let () = switch (htmlDocument->activeElement) {
  | Some(e) => Js.log(e)
  | None => ()
}
let activeElement: option<Dom.element> = htmlDocument->activeElement

let body: option<Dom.element> = htmlDocument->body
let setBody: unit = htmlDocument->setBody(el)
let cookie: string = htmlDocument->cookie
let setCookie: unit = htmlDocument->setCookie("foo=bar;reason=ml")
let defaultView: option<Dom.window> = htmlDocument->defaultView
let designMode: designMode = htmlDocument->designMode
let setDesignMode: unit = htmlDocument->setDesignMode(On)
let dir: dir = htmlDocument->dir
let setDir: unit = htmlDocument->setDir(Ltr)
let domain: option<string> = htmlDocument->domain
let setDomain: unit = htmlDocument->setDomain("reason.ml")
let embeds: Dom.nodeList = htmlDocument->embeds
let forms: Dom.htmlCollection = htmlDocument->forms
let head: Dom.element = htmlDocument->head
let images: Dom.htmlCollection = htmlDocument->images
let lastModified: string = htmlDocument->lastModified
let links: Dom.nodeList = htmlDocument->links
let location: Dom.location = htmlDocument->location
let setLocation: unit = htmlDocument->setLocation("http://reason.ml")
let plugins: Dom.htmlCollection = htmlDocument->plugins
let readyState: readyState = htmlDocument->readyState
let referrer: string = htmlDocument->referrer
let scripts: Dom.htmlCollection = htmlDocument->scripts
let title: string = htmlDocument->title
let setTitle: unit = htmlDocument->setTitle("Reason: Rapid Expressive Systems Programming.")
let url: string = htmlDocument->url

htmlDocument->close
let execCommand: bool = htmlDocument->execCommand("copy", false, None)
let getElementsByName: Dom.nodeList = htmlDocument->getElementsByName("angry-joe")
let getSelection: Dom.selection = htmlDocument->getSelection
htmlDocument->open_
let queryCommandEnabled: bool = htmlDocument->queryCommandEnabled("copy")
let queryCommandIndeterm: bool = htmlDocument->queryCommandIndeterm("cut")
let queryCommandSupported: bool = htmlDocument->queryCommandSupported("paste")
let queryCommandValue: string = htmlDocument->queryCommandValue("fontName")
htmlDocument->write("Hello World!")
htmlDocument->writeln("Hello Newline!")

/* Document and all the things it includes */
let characterSet: string = htmlDocument->characterSet
let compatMode: compatMode = htmlDocument->compatMode
let doctype: Dom.documentType = htmlDocument->doctype
let documentElement: Dom.element = htmlDocument->documentElement
let documentURI: string = htmlDocument->documentURI
let hidden: bool = htmlDocument->hidden
let implementation: Dom.domImplementation = htmlDocument->implementation
let lastStyleSheetSet: string = htmlDocument->lastStyleSheetSet
let pointerLockElement: option<Dom.element> = htmlDocument->pointerLockElement
let preferredStyleSheetSet: string = htmlDocument->preferredStyleSheetSet
let scrollingElement: option<Dom.element> = htmlDocument->scrollingElement
let selectedStyleSheetSet: string = htmlDocument->selectedStyleSheetSet
setSelectedStyleSheetSet(htmlDocument, "muh-stylesheet")
let styleSheets: array<Dom.cssStyleSheet> = htmlDocument->styleSheets
let styleSheetSets: array<string> = htmlDocument->styleSheetSets
let visibilityState: visibilityState = htmlDocument->visibilityState

let adoptNode: Dom.element = htmlDocument->adoptNode(el)
let createAttribute: Dom.attr = htmlDocument->createAttribute("data-foo")
let createAttributeNS: Dom.attr = htmlDocument->createAttributeNS("http://...", "foo")
let createComment: Dom.comment = htmlDocument->createComment("witty comment")
let createDocumentFragment: Dom.documentFragment = htmlDocument->createDocumentFragment
let createElement: Dom.element = htmlDocument->createElement("div")
let elementWithOptions: Dom.element =
  htmlDocument->createElementWithOptions(
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let elementNS: Dom.element = htmlDocument->createElementNS("http://...", "foo")
let elementNsWithOptions: Dom.element =
  htmlDocument->createElementNSWithOptions(
    "http://...",
    "div",
    %raw("{}"),
  ) /* I've no idea what this options object is supposed to be, even the spec doesn't seem to bother explaining it */
let createEvent: Dom.event = htmlDocument->createEvent("MyCustomEvent")
let createNodeIterator: Dom.nodeIterator = htmlDocument->createNodeIterator(el)
let createNodeIteratorWithWhatToShow: Dom.nodeIterator =
  htmlDocument->createNodeIteratorWithWhatToShow(el, WhatToShow._All)
let createNodeIteratorWithWhatToShowFilter: Dom.nodeIterator =
  htmlDocument->createNodeIteratorWithWhatToShowFilter(
    el,
    {
      open WhatToShow
      many(list{_Element, _Attribute})
    },
    NodeFilter.make(_ => 0),
  )
let createRange: Dom.range = htmlDocument->createRange
let createTextNode: Dom.text = htmlDocument->createTextNode("Very reasonable!")
let createTreeWalker: Dom.treeWalker = htmlDocument->createTreeWalker(el)
let createTreeWalkerWithWhatToShow: Dom.treeWalker =
  htmlDocument->createTreeWalkerWithWhatToShow(el, WhatToShow._All)
let createTreeWalkerWithWhatToShowFilter: Dom.treeWalker =
  htmlDocument->createTreeWalkerWithWhatToShowFilter(
    el,
    {
      open WhatToShow
      many(list{_Element, _Attribute})
    },
    NodeFilter.make(_ => 0),
  )
switch htmlDocument->elementFromPoint(0, 0) {
| Some(el) => Js.log(el)
| None => ()
}
let elementsFromPoint: array<Dom.element> = htmlDocument->elementsFromPoint(0, 0)
let enableStyleSheetsForSet: unit = htmlDocument->enableStyleSheetsForSet("my-stylesheet-set")
let exitPointerLock: unit = htmlDocument->exitPointerLock
let getAnimations: array<Dom.animation> = htmlDocument->getAnimations
let getElementsByClassName: Dom.htmlCollection = htmlDocument->getElementsByClassName("lstlisting")
let getElementsByTagName: Dom.htmlCollection = htmlDocument->getElementsByTagName("code")
let getElementsByTagNameNS: Dom.htmlCollection =
  htmlDocument->getElementsByTagNameNS("http://...", "foo")
let hasFocus: bool = htmlDocument->hasFocus
let importNode: Dom.element = htmlDocument->importNode(el)
let importNodeDeep: Dom.element = htmlDocument->importNodeDeep(el)
let getElementById: option<Dom.element> = htmlDocument->getElementById("root")
let querySelector: option<Dom.element> = htmlDocument->querySelector(".lstlisting")
let querySelectorAll: Dom.nodeList = htmlDocument->querySelectorAll(".lstlisting")
