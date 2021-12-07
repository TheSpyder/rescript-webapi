open Webapi.Dom
open DataTransferItemList

let items = DataTransfer.make()->DataTransfer.items

let length: int = items->length
let item: option<Webapi__Dom__DataTransferItem.t> = items->get(1)

items->addString("text", ~format="text/plain")->ignore
// items->addFile(file) - we can't really make a file see #52
items->remove(10)
items->clear
