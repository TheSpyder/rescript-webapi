module ResizeObserverEntry = Webapi__ResizeObserver__ResizeObserverEntry

type t

@new external make: (array<ResizeObserverEntry.t> => unit) => t = "ResizeObserver"
@new
external makeWithObserver: ((array<ResizeObserverEntry.t>, t) => unit) => t = "ResizeObserver"

@send external disconnect: t => unit = "disconnect"
@send external observe: (t, Dom.element) => unit = "observe"
@send external unobserve: (t, Dom.element) => unit = "unobserve"
