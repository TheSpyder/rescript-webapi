type t = Dom.dataTransfer

@new external make: unit => t = "DataTransfer"

@get external dropEffect: t => string = "dropEffect"
@get external effectAllowed: t => string = "effectAllowed"
@get external items: t => Webapi__Dom__DataTransferItemList.t = "items"
@send external setDragImage: (t, Dom.element_like<'a>, int, int) => unit = "setDragImage"
