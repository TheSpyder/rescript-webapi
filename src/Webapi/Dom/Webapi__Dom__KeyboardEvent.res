type t = Dom.keyboardEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})

@new external make: string => t = "KeyboardEvent"
@new external makeWithOptions: (string, {..}) => t = "KeyboardEvent"

@get external altKey: t => bool = "altKey"
@get external code: t => string = "code"
@get external ctrlKey: t => bool = "ctrlKey"
@get external isComposing: t => bool = "isComposing"
@get external key: t => string = "key"
@get external locale: t => string = "locale"
@get external location: t => int = "location"
@get external metaKey: t => bool = "metaKey"
@get external repeat: t => bool = "repeat"
@get external shiftKey: t => bool = "shiftKey"

@send external getModifierState: (t, string) => bool = "getModifierState"
let getModifierState: (t, Webapi__Dom__Types.modifierKey) => bool = (self, key) =>
  self->getModifierState(Webapi__Dom__Types.encodeModifierKey(key))
