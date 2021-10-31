module Impl = (
  T: {
    type t
  },
) => {
  @get external detail: T.t => int = "detail"
  @get external view: T.t => Dom.window = "view" /* technically returns a `WindowProxy` */
}

type t = Dom.uiEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Impl({
  type t = t
})

@new external make: string => t = "UIEvent"
@new external makeWithOptions: (string, {..}) => t = "UIEvent"
