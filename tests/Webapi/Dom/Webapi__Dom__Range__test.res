open Webapi.Dom
open Range

let node = document->Document.createElement("strong")

let range = make()

let _ = range->collapsed
let _ = range->commonAncestorContainer
let _ = range->endContainer
let _ = range->endOffset
let _ = range->startContainer
let _ = range->startOffset

range->setStart(node, 0)
range->setEnd(node, 0)
range->setStartBefore(node)
range->setStartAfter(node)
range->setEndBefore(node)
range->setEndAfter(node)
range->selectNode(node)
range->selectNodeContents(node)
range->collapse
range->collapseToStart
let _ = range->cloneContents
range->deleteContents
let _ = range->extractContents
range->insertNode(node)
range->surroundContents(node)
let _ = range->compareBoundaryPoints(0, range)
let _ = range->cloneRange
range->detach
let _ = range->toString
let _ = range->comparePoint(node, 0)
let _ = range->createContextualFragment("<strong>stuff</strong>")
let _ = range->getBoundingClientRect
let _ = range->getClientRects->RectList.item(0)
let _ = range->getClientRects->RectList.toArray
let _ = range->intersectsNode(node)
let _ = range->isPointInRange(node, 0)
