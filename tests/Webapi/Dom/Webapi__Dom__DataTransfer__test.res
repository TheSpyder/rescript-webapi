open Webapi.Dom
open DataTransfer

let dataTransfer = make()

let dropEffect = dataTransfer->dropEffect
let effectAllowed = dataTransfer->effectAllowed
let items = dataTransfer->items
dataTransfer->setDragImage(document->Document.createElement("div"), 10, 10)
