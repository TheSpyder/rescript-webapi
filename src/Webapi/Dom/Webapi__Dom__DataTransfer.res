type t = Dom.dataTransfer

@new external make: unit => t = "DataTransfer"

@get external dropEffect: t => string = "dropEffect"
@get external effectAllowed: t => string = "effectAllowed"
@get external items: t => Webapi__Dom__DataTransferItemList.t = "items"
@send external setDragImage: (t, Dom.element_like<'a>, int, int) => unit = "setDragImage"

// old interface
@get external types: t => array<string> = "types"
@send external getData: (t, string) => string = "getData"
@send external setData: (t, string, string) => unit = "setData"
@send external clearData: (t, string) => unit = "clearData"
@send external clearAllData: t => unit = "clearData"
@get external files: t => Webapi__FileList.t = "files"
