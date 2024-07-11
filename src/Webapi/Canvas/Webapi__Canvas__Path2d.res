/**
 * Path2D
 * All methods but addPath are common with CanvasRenderingContext2D
 */

type t

@new
external make: (~d: string=?, unit) => t = "Path2D"

/** https://developer.mozilla.org/en-US/docs/Web/API/Path2D/addPath */
@send
external addPath: (t, t) => unit = "addPath"

module T = {
  type t = t
}

// CanvasPathCommons
include Webapi__Canvas__Path_Common.Make(T)
