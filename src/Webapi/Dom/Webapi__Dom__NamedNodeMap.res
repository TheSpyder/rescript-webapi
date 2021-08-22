type t = Dom.namedNodeMap

@get external length: t => int = ""

@send @return(nullable) external item: (t, int) => option<Dom.attr> = ""
@send @return(nullable) external getNamedItem: (t, string) => option<Dom.attr> = ""
@send @return(nullable) external getNamedItemNS: (t, string, string) => option<Dom.attr> = ""
@send external setNamedItem: (t, Dom.attr) => unit = ""
@send external setNamedItemNS: (t, Dom.attr) => unit = ""
@send external removeNamedItem: (t, string) => Dom.attr = ""
@send external removeNamedItemNS: (t, string, string) => Dom.attr = ""

@val @scope(("Array", "prototype", "slice")) external toArray: t => array<Dom.attr> = "call"
