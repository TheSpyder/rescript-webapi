type touchList /* TODO, Touch Events */

module Impl = (
  T: {
    type t
  },
) => {
  @get external altKey: T.t => bool = "altKey"
  @get external changedTouches: T.t => touchList = "changedTouches"
  @get external ctrlKey: T.t => bool = "ctrlKey"
  @get external metaKey: T.t => bool = "metaKey"
  @get external shiftKey: T.t => bool = "shiftKey"
  @get external targetTouches: T.t => touchList = "targetTouches"
  @get external touches: T.t => touchList = "touches"
}

type t = Dom.touchEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})
include Impl({
  type t = t
})

@new external make: string => t = "TouchEvent"
@new external makeWithOptions: (string, {..}) => t = "TouchEvent"
