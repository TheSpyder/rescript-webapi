type t = Dom.nodeList

@val external toArray: t => array<Dom.node> = "Array.prototype.slice.call"

@send external forEach: (t, (Dom.node, int) => unit) => unit = "forEach"

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<Dom.node> = "item"
