/**
 * Spec: https://dom.spec.whatwg.org/#interface-htmlcollection
 */
type t = Dom.htmlCollection

@val @scope(("Array", "prototype", "slice"))
external toArray: t => array<Dom.element> = "call"

@get external length: t => int = "length"
@send @return(nullable) external item: (t, int) => option<Dom.element> = "item"
@send @return(nullable) external namedItem: (t, string) => option<Dom.element> = "namedItem"
