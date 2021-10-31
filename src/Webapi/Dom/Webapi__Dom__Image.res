type t

@new
external makeWithData: (
  ~array: Js.Typed_array.Uint8ClampedArray.t,
  ~width: float,
  ~height: float,
) => t = "ImageData"

@new external make: (~width: float, ~height: float) => t = "ImageData"

@get external data: t => Js.Typed_array.Uint8ClampedArray.t = "data"
@get external height: t => float = "height"
@get external width: t => float = "width"
