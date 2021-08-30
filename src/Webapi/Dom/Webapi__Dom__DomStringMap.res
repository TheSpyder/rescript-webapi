type t = Dom.domStringMap

type key = string

@get_index @return(nullable) external get: (t, key) => option<string> = ""
@set_index external set: (t, key, string) => unit = ""
let unsafeDeleteKey: (t, key) => unit = %raw("function(map, key) { delete map[key] }")
