type t = Dom.htmlCollection

@val @scope(("Array", "prototype", "slice"))
external toArray: t => array<Dom.element> = "call"

@get external length: t => int = ""
@send @return(nullable) external item: (t, int) => option<Dom.element> = ""
@send @return(nullable) external namedItem: (t, string) => option<Dom.element> = ""
