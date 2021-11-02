type t = Dom.timeEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "TimeEvent"
@new external makeWithOptions: (string, {..}) => t = "TimeEvent"

@get external detail: t => int = "detail"
@get external view: t => Dom.window = "view" /* technically returns a `WindowProxy` */
