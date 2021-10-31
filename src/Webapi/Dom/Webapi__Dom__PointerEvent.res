type t = Dom.pointerEvent
type pointerId = Dom.eventPointerId

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})
include Webapi__Dom__MouseEvent.Impl({
  type t = t
})

@new external make: string => t = "PointerEvent"
@new external makeWithOptions: (string, {..}) => t = "PointerEvent"

@get external pointerId: t => pointerId = "pointerId"
@get external width: t => int = "width"
@get external height: t => int = "height"
@get external pressure: t => float = "pressure"
@get external tiltX: t => int = "tiltX"
@get external tiltY: t => int = "tiltY"
@get external pointerType: t => string = "pointerType"
let pointerType: t => Webapi__Dom__Types.pointerType = self =>
  Webapi__Dom__Types.decodePointerType(pointerType(self))
@get external isPrimary: t => bool = "isPrimary"
