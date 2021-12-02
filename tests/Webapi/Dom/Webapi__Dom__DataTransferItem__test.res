open Webapi.Dom
open DataTransferItem

let item = DataTransfer.make()->DataTransfer.items->DataTransferItemList.get(0)->Js.Option.getExn

let kind = item->kind
let itemType = item->itemType
item->getAsString(_str => ())
let file = item->getFile
