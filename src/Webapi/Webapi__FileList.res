type t = private {
  length: int
}

@val external toArray: t => array<Webapi__File.t> = "Array.prototype.slice.call"

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<Webapi__File.t> = "item"
