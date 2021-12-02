open Webapi.Dom
open DataTransfer

let dataTransfer = make()

let dropEffect: dropEffect = dataTransfer->getDropEffect
dataTransfer->setDropEffect(#copy)
let effectAllowed: effectAllowed = dataTransfer->getEffectAllowed
dataTransfer->setEffectAllowed(#linkMove)
let items: Webapi__Dom__DataTransferItemList.t = dataTransfer->items
dataTransfer->setDragImage(document->Document.createElement("div"), 10, 10)

let types: array<string> = dataTransfer->types
let data: string = dataTransfer->getData("text/plain")
dataTransfer->setData("text/plain", "text")
dataTransfer->clearData("text/plain")
dataTransfer->clearAllData
let files: Webapi__FileList.t = dataTransfer->files

let dropEffectString: string = dropEffectToString(#copy)
let effectAllowedString: string = effectAllowedToString(#linkMove)
