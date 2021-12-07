type t

@get external length: t => int = "length"
@get_index external get: (t, int) => option<Webapi__Dom__DataTransferItem.t> = ""
@send @return(nullable) external addString: (t, string, ~format: string) => option<Webapi__Dom__DataTransferItem.t> = "add"
@send @return(nullable) external addFile: (t, Webapi__File.t) => option<Webapi__Dom__DataTransferItem.t> = "add"
@send external remove: (t, int) => unit = "remove"
@send external clear: t => unit = "clear"
