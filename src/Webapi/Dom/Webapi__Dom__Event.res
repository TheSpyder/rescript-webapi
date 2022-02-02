module Impl = (
  T: {
    type t
  },
) => {
  @get external bubbles: T.t => bool = "bubbles"
  @get external cancelable: T.t => bool = "cancelable"
  @get external composed: T.t => bool = "composed"
  @get external currentTarget: T.t => Dom.eventTarget = "currentTarget"
  @get external defaultPrevented: T.t => bool = "defaultPrevented"
  @get external eventPhase: T.t => int = "eventPhase"

  let eventPhase: T.t => Webapi__Dom__Types.EventPhase.t = self =>
    Webapi__Dom__Types.EventPhase.decode(eventPhase(self))

  @get external target: T.t => Dom.eventTarget = "target"
  @get external timeStamp: T.t => float = "timeStamp"
  @get external type_: T.t => string = "type"
  @get external isTrusted: T.t => bool = "isTrusted"

  @send external preventDefault: T.t => unit = "preventDefault"
  @send external stopImmediatePropagation: T.t => unit = "stopImmediatePropagation"
  @send external stopPropagation: T.t => unit = "stopPropagation"
}

type t = Dom.event

include Impl({
  type t = t
})

@new external make: string => t = "Event"
@new external makeWithOptions: (string, {..}) => t = "Event"

/*
    Unimplemented Event interfaces

    BlobEvent /* experimental, MediaStream recording */
    CSSFontFaceLoadEvent /* experimental - https://www.w3.org/TR/css-font-loading-3/#dom-cssfontfaceloadevent */
    DeviceLightEvent /* experimenta, Ambient Light */
    DeviceMotionEvent /* experimental, Device Orientation */
    DeviceOrientationEvent /* experimental, Device Orientation */
    DeviceProximityEvent /* experimental, Device Orientation */
    DOMTransactionEvent /* very experimental - https://dvcs.w3.org/hg/undomanager/raw-file/tip/undomanager.html#the-domtransactionevent-interface */
    EditingBeforeInputEvent /* https://dvcs.w3.org/hg/editing/raw-file/57abe6d3cb60/editing.html#editingbeforeinputevent */
    FetchEvent /* experimental, Service Workers */
    GamepadEvent /* experimental, Gamepad */
    HashChangeEvent /* https://www.w3.org/TR/html51/browsers.html#the-hashchangeevent-interface */
    MediaStreamEvent /* experimental, WebRTC */
    MessageEvent /* experimental, Websocket/WebRTC */
    MutationEvent
    OfflineAudioCompletionEvent /* experimental, Web Audio */
    RTCDataChannelEvent /* experimental, WebRTC */
    RTCIdentityErrorEventA /* experimental, WebRTC */
    RTCIdentityEvent /* experimental, WebRTC */
    RTCPeerConnectionIceEvent /* experimental, WebRTC */
    UserProximityEvent /* experimental, Proximity Events */
 */
