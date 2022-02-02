type t = private {
  length: int
}

@val external toArray: t => array<Dom.domRect> = "Array.prototype.slice.call"

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<Dom.domRect> = "item"
