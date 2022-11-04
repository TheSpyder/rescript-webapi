module Canvas2d = Webapi__Canvas__Canvas2d
module WebGl = Webapi__Canvas__WebGl
module Blob = Webapi__Blob

module CanvasElement = {
  @send external getContext2d: (Dom.element, @as("2d") _) => Canvas2d.t = "getContext"
  @send external getContextWebGl: (Dom.element, @as("webgl") _) => WebGl.glT = "getContext"
  @send external toBlob: (Dom.element, Blob.t => unit) => unit = "toBlob"
  @send external toBlobWithType: (Dom.element, Blob.t => unit, string) => unit = "toBlob"
  @send
  external toBlobWithTypeAndQuality: (Dom.element, Blob.t => unit, string, float) => unit = "toBlob"
  @send external toDataUrl: Dom.element => unit = "toDataUrl"
  @send external toDataUrlWithType: (Dom.element, string) => unit = "toDataUrl"
  @send
  external toDataUrlWithTypeAndEncoderOptions: (Dom.element, string, float) => unit = "toDataUrl"
  @get external height: Dom.element => int = "height"
  @set external setHeight: (Dom.element, int) => unit = "height"
  @get external width: Dom.element => int = "width"
  @set external setWidth: (Dom.element, int) => unit = "width"
}
