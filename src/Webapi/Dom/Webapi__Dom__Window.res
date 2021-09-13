type console /* Console API, should maybe be defined in Js stdlib */
type crypto /* Web Cryptography API */
type frameList /* array-like, WindowProxy? */
type idleDeadline /* Cooperative Scheduling of Background Tasks */
type locationbar /* "bar object" */
type menubar /* "bar object" */
type navigator
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

  @get external console: t_window => console = ""
  @get external crypto: t_window => crypto = ""
  @get external document: t_window => Dom.document = ""
  @get @return(nullable)
  external frameElement: t_window => option<Dom.element> = "" /* experimental? */
  @get external frames: t_window => frameList = ""
  @get external fullScreen: t_window => bool = ""
  @get external history: t_window => Dom.history = ""
  @get external innerWidth: t_window => int = ""
  @get external innerHeight: t_window => int = ""
  @get external isSecureContext: t_window => bool = ""
  @get external length: t_window => int = ""
  @get external location: t_window => Dom.location = ""
  @set external setLocation: (t_window, string) => unit = "location"
  @get external locationbar: t_window => locationbar = ""
  /* localStorage: accessed directly via Dom.Storage.localStorage */
  @get external menubar: t_window => menubar = ""
  @get external name: t_window => string = ""
  @set external setName: (t_window, string) => unit = "name"
  @get external navigator: t_window => navigator = ""
  @get @return(nullable) external opener: t_window => option<Dom.window> = ""
  @get external outerWidth: t_window => int = ""
  @get external outerHeight: t_window => int = ""
  @get external pageXOffset: t_window => float = "" /* alias for scrollX */
  @get external pageYOffset: t_window => float = "" /* alias for scrollY */
  @get external parent: t_window => Dom.window = ""
  @get external performance: t_window => Webapi__Performance.t = ""
  @get external personalbar: t_window => personalbar = ""
  @get external screen: t_window => screen = ""
  @get external screenX: t_window => int = ""
  @get external screenY: t_window => int = ""
  @get external scrollbars: t_window => scrollbars = ""
  @get external scrollX: t_window => float = ""
  @get external scrollY: t_window => float = ""
  @get
  external self: t_window => Dom.window =
    "" /* alias for window, but apparently convenient because self (stand-alone) resolves to WorkerGlobalScope in a web worker. Probably poitnless here though */
  /* sessionStorage: accessed directly via Dom.Storage.sessionStorage */
  @get external speechSynthesis: t_window => speechSynthesis = "" /* experimental */
  @get external status: t_window => string = ""
  @set external setStatus: (t_window, string) => unit = "status"
  @get external statusbar: t_window => statusbar = ""
  @get external toolbar: t_window => toolbar = ""
  @get external top: t_window => Dom.window = ""
  @get
  external window: t_window => t_window =
    "" /* This is pointless I think, it's just here because window is the implicit global scope, and it's needed to be able to get a reference to it */

  @send external alert: (t_window, string) => unit = ""
  @send external blur: t_window => unit = ""
  @send
  external cancelIdleCallback: (t_window, idleCallbackId) => unit =
    "" /* experimental, Cooperative Scheduling of Background Tasks */
  @send external close: t_window => unit = ""
  @send external confirm: (t_window, string) => bool = ""
  @send external focus: t_window => unit = ""
  @send external getComputedStyle: (t_window, Dom.element) => Dom.cssStyleDeclaration = ""
  @send
  external getComputedStyleWithPseudoElement: (
    t_window,
    Dom.element,
    string,
  ) => Dom.cssStyleDeclaration = "getComputedStyle"
  @send @return(nullable) external getSelection: t_window => option<Dom.selection> = ""
  @send
  external matchMedia: (t_window, string) => mediaQueryList =
    "" /* experimental, CSSOM View module */
  @send external moveBy: (t_window, int, int) => unit = "" /* experimental, CSSOM View module */
  @send external moveTo: (t_window, int, int) => unit = "" /* experimental, CSSOM View module */
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
  external postMessage: (t_window, 'a, string) => unit = "" /* experimental-ish?, Web Messaging */
  @send
  external postMessageWithTransfers: (t_window, 'a, string, array<transferable>) => unit =
    "postMessage" /* experimental-ish?, Web Messaging */
  @send external print: t_window => unit = ""
  @send external prompt: (t_window, string) => string = ""
  @send external promptWithDefault: (t_window, string, string) => string = "prompt"
  /* requestAnimationFrame: accessed directly via Webapi */
  @send
  external requestIdleCallback: (t_window, idleDeadline => unit) => idleCallbackId =
    "" /* experimental, Cooperative Scheduling of Background Tasks */
  @send
  external requestIdleCallbackWithOptions: (
    t_window,
    idleDeadline => unit,
    {"timeout": int},
  ) => idleCallbackId =
    "requestIdleCallback" /* experimental, Cooperative Scheduling of Background Tasks */
  @send external resizeBy: (t_window, int, int) => unit = "" /* experimental, CSSOM View module */
  @send external resizeTo: (t_window, int, int) => unit = "" /* experimental, CSSOM View module */
  @send external scroll: (t_window, float, float) => unit = "" /* experimental, CSSOM View module */
  @send
  external scrollBy: (t_window, float, float) => unit = "" /* experimental, CSSOM View module */
  @send
  external scrollTo: (t_window, float, float) => unit = "" /* experimental, CSSOM View module */
  @send external stop: t_window => unit = ""
  
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

/* include WindowOrWorkerGlobalScope? not really "dom" though */
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__GlobalEventHandlers.Impl({
  type t = t
})
include Impl({
  type t = t
})
