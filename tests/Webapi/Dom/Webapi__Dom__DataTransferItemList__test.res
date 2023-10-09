open Webapi.Dom
open DataTransferItemList

let items: t = DataTransfer.make()->DataTransfer.items

let length: int = items->length
let item: option<DataTransferItem.t> = items->get(1)

let addedString: option<DataTransferItem.t> = items->addString("text", ~format="text/plain")
// items->addFile(file) - we can't really make a file see #52
items->remove(10)
items->clear
