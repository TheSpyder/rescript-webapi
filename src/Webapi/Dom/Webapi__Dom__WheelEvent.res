type t = Dom.wheelEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})
include Webapi__Dom__MouseEvent.Impl({
  type t = t
})

@new external make: string => t = "WheelEvent"
@new external makeWithOptions: (string, {..}) => t = "WheelEvent"

@get external deltaX: t => float = "deltaX"
@get external deltaY: t => float = "deltaY"
@get external deltaZ: t => float = "deltaZ"
@get external deltaMode: t => int = "deltaMode"
let deltaMode: t => Webapi__Dom__Types.deltaMode = self =>
  Webapi__Dom__Types.decodeDeltaMode(deltaMode(self))
