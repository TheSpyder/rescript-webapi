type console /* Console API, should maybe be defined in Js stdlib */
type crypto /* Web Cryptography API */
type frameList /* array-like, WindowProxy? */
type idleDeadline /* Cooperative Scheduling of Background Tasks */
type locationbar /* "bar object" */
type menubar /* "bar object" */
@deprecated
type navigator = Webapi__Navigator.t
type personalbar /* "bar object" */
type screen
type scrollbars /* "bar object" */
type speechSynthesis
type statusbar /* "bar object" */
type toolbar /* "bar object" */
type mediaQueryList /* CSSOM View module */
type transferable

type idleCallbackId /* used by requestIdleCallback and cancelIdleCallback */

module Impl = (
  T: {
    type t
  },
) => {
  type t_window = T.t

  /* A lot of this isn't really "dom", but rather global exports */

  @get external console: t_window => console = "console"
  @get external crypto: t_window => crypto = "crypto"
  @get external document: t_window => Dom.document = "document"
  @get @return(nullable)
  external frameElement: t_window => option<Dom.element> = "frameElement" /* experimental? */
  @get external frames: t_window => frameList = "frames"
  @get external fullScreen: t_window => bool = "fullScreen"
  @get external history: t_window => Dom.history = "history"
  @get external innerWidth: t_window => int = "innerWidth"
  @get external innerHeight: t_window => int = "innerHeight"
  @get external length: t_window => int = "length"
  @get external location: t_window => Dom.location = "location"
  @set external setLocation: (t_window, string) => unit = "location"
  @get external locationbar: t_window => locationbar = "locationbar"
  /* localStorage: accessed directly via Dom.Storage.localStorage */
  @get external menubar: t_window => menubar = "menubar"
  @get external name: t_window => string = "name"
  @set external setName: (t_window, string) => unit = "name"
  @get external navigator: t_window => Webapi__Navigator.t = "navigator"
  @get @return(nullable) external opener: t_window => option<Dom.window> = "opener"
  @get external outerWidth: t_window => int = "outerWidth"
  @get external outerHeight: t_window => int = "outerHeight"
  @get external pageXOffset: t_window => float = "pageXOffset" /* alias for scrollX */
  @get external pageYOffset: t_window => float = "pageYOffset" /* alias for scrollY */
  @get external parent: t_window => Dom.window = "parent"
  @get external performance: t_window => Webapi__Performance.t = "performance"
  @get external personalbar: t_window => personalbar = "personalbar"
  @get external screen: t_window => screen = "screen"
  @get external screenX: t_window => int = "screenX"
  @get external screenY: t_window => int = "screenY"
  @get external scrollbars: t_window => scrollbars = "scrollbars"
  @get external scrollX: t_window => float = "scrollX"
  @get external scrollY: t_window => float = "scrollY"
  @get
  external self: t_window => Dom.window = "self" /* alias for window, but apparently convenient because self (stand-alone) resolves to WorkerGlobalScope in a web worker. Probably poitnless here though */
  /* sessionStorage: accessed directly via Dom.Storage.sessionStorage */
  @get external speechSynthesis: t_window => speechSynthesis = "speechSynthesis" /* experimental */
  @get external status: t_window => string = "status"
  @set external setStatus: (t_window, string) => unit = "status"
  @get external statusbar: t_window => statusbar = "statusbar"
  @get external toolbar: t_window => toolbar = "toolbar"
  @get external top: t_window => Dom.window = "top"
  @get
  external window: t_window => t_window = "window" /* This is pointless I think, it's just here because window is the implicit global scope, and it's needed to be able to get a reference to it */

  @send external alert: (t_window, string) => unit = "alert"
  @send external blur: t_window => unit = "blur"
  @send
  external cancelIdleCallback: (t_window, idleCallbackId) => unit = "cancelIdleCallback" /* experimental, Cooperative Scheduling of Background Tasks */
  @send external close: t_window => unit = "close"
  @send external confirm: (t_window, string) => bool = "confirm"
  @send external focus: t_window => unit = "focus"
  @send external getComputedStyle: (t_window, Dom.element) => Dom.cssStyleDeclaration = "getComputedStyle"
  @send
  external getComputedStyleWithPseudoElement: (
    t_window,
    Dom.element,
    string,
  ) => Dom.cssStyleDeclaration = "getComputedStyle"
  @send @return(nullable) external getSelection: t_window => option<Dom.selection> = "getSelection"
  @send
  external matchMedia: (t_window, string) => mediaQueryList = "matchMedia" /* experimental, CSSOM View module */
  @send external moveBy: (t_window, int, int) => unit = "moveBy" /* experimental, CSSOM View module */
  @send external moveTo: (t_window, int, int) => unit = "moveTo" /* experimental, CSSOM View module */
  @send @return(nullable)
  external open_: (
    t_window,
    ~url: string,
    ~name: string,
    ~features: string=?,
    @ignore unit,
  ) => option<Dom.window> =
    "open" /* yes, features is a stringly typed list of key value pairs, sigh */
  @send
  external postMessage: (t_window, 'a, string) => unit = "postMessage" /* experimental-ish?, Web Messaging */
  @send
  external postMessageWithTransfers: (t_window, 'a, string, array<transferable>) => unit =
    "postMessage" /* experimental-ish?, Web Messaging */
  @send external print: t_window => unit = "print"
  @send external prompt: (t_window, string) => string = "prompt"
  @send external promptWithDefault: (t_window, string, string) => string = "prompt"
  /* requestAnimationFrame: accessed directly via Webapi */
  @send
  external requestIdleCallback: (t_window, idleDeadline => unit) => idleCallbackId = "requestIdleCallback" /* experimental, Cooperative Scheduling of Background Tasks */
  @send
  external requestIdleCallbackWithOptions: (
    t_window,
    idleDeadline => unit,
    {"timeout": int},
  ) => idleCallbackId =
    "requestIdleCallback" /* experimental, Cooperative Scheduling of Background Tasks */
  @send external resizeBy: (t_window, int, int) => unit = "resizeBy" /* experimental, CSSOM View module */
  @send external resizeTo: (t_window, int, int) => unit = "resizeTo" /* experimental, CSSOM View module */
  @send external scroll: (t_window, float, float) => unit = "scroll" /* experimental, CSSOM View module */
  @send
  external scrollBy: (t_window, float, float) => unit = "scrollBy" /* experimental, CSSOM View module */
  @send
  external scrollTo: (t_window, float, float) => unit = "scrollTo" /* experimental, CSSOM View module */
  @send external stop: t_window => unit = "stop"

  @send external scrollToWithOptions: (T.t, {"top": float, "left": float, "behavior": string}) => unit = "scrollTo"

  @send
  external addPopStateEventListener: (
    t_window,
    @as("popstate") _,
    Dom.popStateEvent => unit,
  ) => unit = "addEventListener"
  @send
  external removePopStateEventListener: (
    t_window,
    @as("popstate") _,
    Dom.popStateEvent => unit,
  ) => unit = "removeEventListener"

  @set
  external setOnLoad: (t_window, unit => unit) => unit =
    "onload" /* use addEventListener instead? */
}

type t = Dom.window

include Webapi__WindowOrWorkerGlobalScope.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__GlobalEventHandlers.Impl({
  type t = t
})
include Impl({
  type t = t
})
