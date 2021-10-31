type t = Dom.namedNodeMap

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<Dom.attr> = "item"
@send @return(nullable) external getNamedItem: (t, string) => option<Dom.attr> = "getNamedItem"
@send @return(nullable) external getNamedItemNS: (t, string, string) => option<Dom.attr> = "getNamedItemNS"
@send external setNamedItem: (t, Dom.attr) => unit = "setNamedItem"
@send external setNamedItemNS: (t, Dom.attr) => unit = "setNamedItemNS"
@send external removeNamedItem: (t, string) => Dom.attr = "removeNamedItem"
@send external removeNamedItemNS: (t, string, string) => Dom.attr = "removeNamedItemNS"

@val @scope(("Array", "prototype", "slice")) external toArray: t => array<Dom.attr> = "call"
