type t /* Main type, representing Path2d object */

@new
external make: (~d: string=?, unit) => t = "Path2D"

@send
external addPath: (t, t) => unit = "addPath"
