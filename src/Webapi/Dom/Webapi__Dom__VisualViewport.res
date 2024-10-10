/// Support for https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport

type t

@get external height: t => int = "height"
@get external width: t => int = "width"
@get external scale: t => float = "scale"
@get external offsetLeft: t => int = "offsetLeft"
@get external offsetTop: t => int = "offsetTop"
@get external pageLeft: t => int = "pageLeft"
@get external pageTop: t => int = "pageTop"

include Webapi__Dom__EventTarget.Impl({
  type t = t
})
