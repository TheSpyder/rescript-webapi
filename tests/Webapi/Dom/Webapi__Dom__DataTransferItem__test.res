open Webapi.Dom
open DataTransferItem

let item: DataTransferItem.t = DataTransfer.make()->DataTransfer.items->DataTransferItemList.get(0)->Js.Option.getExn

let kind: kind = item->kind
let itemType: string = item->itemType
item->getAsString(_str => ())
let file: option<Webapi__File.t> = item->getFile

let kindString: string = kindToString(#file)
