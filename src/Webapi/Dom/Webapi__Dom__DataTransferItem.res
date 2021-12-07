type t

type kind = [#string | #file]

type functionStringCallback = string => unit

@get external kind: t => kind = "kind"
@get external itemType: t => string = "type"
@send external getAsString: (t, functionStringCallback) => unit = "getAsString"
@send @return(nullable) external getFile: t => option<Webapi__File.t> = "getFile"

external kindToString: kind => string = "%identity"
