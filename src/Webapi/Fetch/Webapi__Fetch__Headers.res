type t = private {
  entries: Webapi__Iterator.t<string>,
  keys: Webapi__Iterator.t<string>,
  values: Webapi__Iterator.t<string>,
}

@new external make: unit => t = "Headers"
@new external makeWithObj: {..} => t = "Headers"
@new external makeWithDict: Js.Dict.t<string> => t = "Headers"
@new external makeWithArray: array<(string, string)> => t = "Headers"

@send external append: (t, string, string) => unit = "append"

@send external delete: (t, string) => unit = "delete"

@send @return(null_to_opt)
external get: (t, string) => option<string> = "get"

@send external has: (t, string) => bool = "has"

@send external set: (t, string, string) => unit = "set"
