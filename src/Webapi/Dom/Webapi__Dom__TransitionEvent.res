type t = Dom.transitionEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "TransitionEvent"
@new external makeWithOptions: (string, {..}) => t = "TransitionEvent"

@get external propertyName: t => string = "propertyName"
@get external elapsedTime: t => float = "elapsedTime"
@get external pseudoElement: t => string = "pseudoElement"
