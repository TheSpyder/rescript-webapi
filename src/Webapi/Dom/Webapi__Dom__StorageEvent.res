type t = Dom.storageEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "StorageEvent"
@new external makeWithOptions: (string, {..}) => t = "StorageEvent"

@get external key: t => string = "key"
@get external newValue: t => Js.Nullable.t<string> = "newValue"
@get external oldValue: t => Js.Nullable.t<string> = "oldValue"
@get external storageArea: t => Dom.Storage.t = "storageArea"
@get external url: t => string = "url"
