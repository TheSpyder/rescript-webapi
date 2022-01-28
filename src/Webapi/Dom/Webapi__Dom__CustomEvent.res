type t = Dom.customEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "CustomEvent"
@new external makeWithOptions: (string, {..}) => t = "CustomEvent"

module Make = (
  Detail: {
    type t
  },
) => {
  type t = Dom.customEvent

  include Webapi__Dom__Event.Impl({
    type t = t
  })

  @new external make: string => t = "CustomEvent"
  @new external makeWithOptions: (string, Detail.t) => t = "CustomEvent"
  @get external detail: t => Detail.t = "detail"
}
