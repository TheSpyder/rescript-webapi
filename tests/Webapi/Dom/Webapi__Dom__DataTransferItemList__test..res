open Webapi.Dom
open DataTransferItemList

let items = DataTransfer.make()->DataTransfer.items

let length = items->length
let item = items->get(1)

items->addString("text/plain", "text")->ignore
// items->addFile(file) - we can't really make a file
items->remove(10)
items->clear
