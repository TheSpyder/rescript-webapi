type t

module Impl = (
  T: {
    type t
  },
) => {
  type t_canvasImageSource = T.t

  %%private(
    @send
    external drawImageJS: (
      Webapi__Canvas__Canvas2d.t,
      ~image: t_canvasImageSource,
      ~dx: float,
      ~dy: float,
    ) => unit = "drawImage"

    @send
    external drawImageScaleJS: (
      Webapi__Canvas__Canvas2d.t,
      ~image: t_canvasImageSource,
      ~dx: float,
      ~dy: float,
      ~dWidth: float,
      ~dHeight: float,
    ) => unit = "drawImage"

    @send
    external drawImageFullJS: (
      Webapi__Canvas__Canvas2d.t,
      t_canvasImageSource,
      float,
      float,
      float,
      float,
      float,
      float,
      float,
      float,
    ) => unit = "drawImage"
  )

  let drawImage = (image, ~ctx, ~dx, ~dy) => ctx->drawImageJS(~image, ~dx, ~dy)

  let drawImageScale = (image, ~ctx, ~dx, ~dy, ~dWidth, ~dHeight) =>
    ctx->drawImageScaleJS(~image, ~dx, ~dy, ~dWidth, ~dHeight)

  let drawImageFull = (image, ~ctx, ~sx, ~sy, ~sWidth, ~sHeight, ~dx, ~dy, ~dWidth, ~dHeight) =>
    ctx->drawImageFullJS(image, sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
}
