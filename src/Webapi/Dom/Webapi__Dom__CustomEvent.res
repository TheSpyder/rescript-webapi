type t = Dom.customEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "CustomEvent"
@new external makeWithOptions: (string, {..}) => t = "CustomEvent"

type _typedCustomEvent<'a>

module Make = (
  Detail: {
    type t
  },
) => {
  type t = Dom.event_like<_typedCustomEvent<Detail.t>>

  include Webapi__Dom__Event.Impl({
    type t = t
  })

  @new external make: string => t = "CustomEvent"
  @new external makeWithOptions: (string, Detail.t) => t = "CustomEvent"
  @get external detail: t => Detail.t = "detail"
}
