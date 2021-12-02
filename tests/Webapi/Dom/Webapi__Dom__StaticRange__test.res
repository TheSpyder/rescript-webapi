open Webapi.Dom
open StaticRange

let node = document->Document.createElement("strong")
let text = document->Document.createTextNode("text")

let range = make({
  startContainer: node,
  startOffset: 1,
  endContainer: text,
  endOffset: 1,
})

let _ = range->collapsed
let _ = range->endContainer
let _ = range->endOffset
let _ = range->startContainer
let _ = range->startOffset
