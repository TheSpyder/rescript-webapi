type t

@new external make: unit => t = "Image"
@new external makeWithSize: (int, int) => t = "Image"

@get external alt: t => string = "alt"
@set external setAlt: (t, string) => unit = "alt"
@get external src: t => string = "src"
@set external setSrc: (t, string) => unit = "src"
@get external srcset: t => string = "srcset"
@set external setSrcset: (t, string) => unit = "srcset"
@get external sizes: t => string = "sizes"
@set external setSizes: (t, string) => unit = "sizes"
@get @return(nullable) external crossOrigin: t => option<string> = "crossOrigin"
@set external setCrossOrigin: (t, Js.null<string>) => unit = "crossOrigin"
let setCrossOrigin = (self, value) => setCrossOrigin(self, Js.Null.fromOption(value))
@get external useMap: t => string = "useMap"
@set external setUseMap: (t, string) => unit = "useMap"
@get external isMap: t => bool = "isMap"
@set external setIsMap: (t, bool) => unit = "isMap"
@get external height: t => int = "height"
@set external setHeight: (t, int) => unit = "height"
@get external width: t => int = "width"
@set external setWidth: (t, int) => unit = "width"
@get external naturalHeight: t => int = "naturalHeight"
@get external naturalWidth: t => int = "naturalWidth"
@get external complete: t => bool = "complete"
@get external currentSrc: t => string = "currentSrc"
@get external referrerPolicy: t => string = "referrerPolicy"
@set external setReferrerPolicy: (t, string) => unit = "referrerPolicy"
@get external decoding: t => string = "decoding"
@set external setDecoding: (t, string) => unit = "decoding"

@send external decode: t => Js.Promise.t<unit> = "decode"

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__Element.Impl({
  type t = t
})
include Webapi__Dom__HtmlElement.Impl({
  type t = t
})
