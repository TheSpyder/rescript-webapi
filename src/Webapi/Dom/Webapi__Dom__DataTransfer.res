type t = Dom.dataTransfer

type dropEffect = [#none | #copy | #link | #move]

type effectAllowed = [
  | #none
  | #copy
  | #copyLink
  | #copyMove
  | #link
  | #linkMove
  | #move
  | #all
  | #uninitialized
]

@new external make: unit => t = "DataTransfer"

@get external getDropEffect: t => dropEffect = "dropEffect"
@set external setDropEffect: (t, dropEffect) => unit = "dropEffect"
@get external getEffectAllowed: t => effectAllowed = "effectAllowed"
@set external setEffectAllowed: (t, effectAllowed) => unit = "effectAllowed"
@get external items: t => Webapi__Dom__DataTransferItemList.t = "items"
@send external setDragImage: (t, Dom.element_like<'a>, int, int) => unit = "setDragImage"

// old interface
@get external types: t => array<string> = "types"
@send external getData: (t, string) => string = "getData"
@send external setData: (t, ~format: string, string) => unit = "setData"
@send external clearData: (t, string) => unit = "clearData"
@send external clearAllData: t => unit = "clearData"
@get external files: t => Webapi__FileList.t = "files"

external dropEffectToString: dropEffect => string = "%identity"
external effectAllowedToString: effectAllowed => string = "%identity"
