type t = Dom.errorEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "ErrorEvent"
@new external makeWithOptions: (string, {..}) => t = "ErrorEvent"

@get external message: t => string = "message"
@get external filename: t => string = "filename"
@get external lineno: t => int = "lineno"
@get external colno: t => int = "colno"
@get external error: t => {..} = "error"
