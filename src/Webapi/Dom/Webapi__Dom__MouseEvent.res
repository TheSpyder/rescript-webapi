module Impl = (
  T: {
    type t
  },
) => {
  @get external altKey: T.t => bool = "altKey"
  @get external button: T.t => int = "button"
  @get external buttons: T.t => int = "buttons" /* bitmask */
  @get external clientX: T.t => int = "clientX"
  @get external clientY: T.t => int = "clientY"
  @get external ctrlKey: T.t => bool = "ctrlKey"
  @get external metaKey: T.t => bool = "metaKey"
  @get external movementX: T.t => int = "movementX"
  @get external movementY: T.t => int = "movementY"
  @get external offsetX: T.t => int = "offsetX" /* experimental, but widely supported */
  @get external offsetY: T.t => int = "offsetY" /* experimental, but widely supported */
  @get external pageX: T.t => int = "pageX" /* experimental, but widely supported */
  @get external pageY: T.t => int = "pageY" /* experimental, but widely supported */
  @get @return(nullable) external region: T.t => option<string> = "region"
  @get @return(nullable) external relatedTarget: T.t => option<Dom.eventTarget> = "relatedTarget"
  @get external screenX: T.t => int = "screenX"
  @get external screenY: T.t => int = "screenY"
  @get external shiftKey: T.t => bool = "shiftKey"
  @get external x: T.t => int = "x" /* experimental */
  @get external y: T.t => int = "y" /* experimental */
  @send external getModifierState: (T.t, string) => bool = "getModifierState"
  let getModifierState: (T.t, Webapi__Dom__Types.modifierKey) => bool = (self, key) =>
    self->getModifierState(Webapi__Dom__Types.encodeModifierKey(key))
}

type t = Dom.mouseEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})
include Impl({
  type t = t
})

@new external make: string => t = "MouseEvent"
@new external makeWithOptions: (string, {..}) => t = "MouseEvent"
