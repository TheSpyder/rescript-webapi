open Webapi.Canvas

let path1 = Path2d.make()
let path2 = Path2d.make(~d="M10 10 h 80 v 80 h -80 Z", ())

path1->Path2d.addPath(path2)
