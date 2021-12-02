open Webapi.Dom
open StaticRange

let node = document->Document.createElement("strong")
let text = document->Document.createTextNode("text")

let range: StaticRange.t = make({
  startContainer: node,
  startOffset: 1,
  endContainer: text,
  endOffset: 1,
})
 
let collapsed: bool = range->collapsed
let endContainer: Dom.node = range->endContainer
let endOffset: int = range->endOffset
let startContainer: Dom.node = range->startContainer
let startOffset: int = range->startOffset
