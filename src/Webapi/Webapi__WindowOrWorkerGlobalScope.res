module Impl = (
  T: {
    type t
  },
) => {
  include Webapi__Base64

  type t_windowOrWorkerGlobalScope = T.t

  @get external origin: t_windowOrWorkerGlobalScope => string = "origin"

  // experimental
  @get external isSecureContext: t_windowOrWorkerGlobalScope => bool = "isSecureContext"

  // experimental
  @get external crossOriginIsolated: t_windowOrWorkerGlobalScope => bool = "crossOriginIsolated"

  // Does not seem to be implemented in browsers?
  // @send external reportError: (t_windowOrWorkerGlobalScope, Webapi.Dom.ErrorEvent.t) => unit = ""

  // {set,clear}{Interval,Timeout} are not implemented here because they are in the rescript-compiler Js.Global module

  @val external queueMicrotask: (@uncurry unit => unit) => unit = "queueMicrotask"

  // TODO: ImageBitmap
  // Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, optional ImageBitmapOptions options = {});
  // Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, long sx, long sy, long sw, long sh, optional ImageBitmapOptions options = {});

  // TODO: structured cloning
  // any structuredClone(any value, optional StructuredSerializeOptions options = {});
}
