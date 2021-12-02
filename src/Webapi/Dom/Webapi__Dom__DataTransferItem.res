type t

type functionStringCallback = string => unit

@get external kind: t => string = "kind"
@get external itemType: t => string = "type"
@send external getAsString: (t, functionStringCallback) => unit = "getAsString"
@send @return(nullable) external getFile: t => option<Webapi__File.t> = "getFile"
