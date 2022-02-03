type t = private {
  /* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorid */
  userAgent: string,
  vendor: string,
  /**
   * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorlanguage
   *
   * Returns a BCP 47 language tag
   */
  language: string,
  /**
   * Experimental. Returns a readonly array of BCP 47 language tags
   */
  languages: array<string>,
  /* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatoronline */
  onLine: bool,
  /* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcookies */
  cookieEnabled: bool,
  /* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorplugins */
  pdfViewerEnabled: bool,
  /* Spec: https://html.spec.whatwg.org/multipage/workers.html#navigatorconcurrenthardware */
  hardwareConcurrency: int,
}

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcontentutils */

@send
external registerProtocolHandler: (t, ~scheme: string, ~url: string) => unit =
  "registerProtocolHandler"

@send
external unregisterProtocolHandler: (t, ~scheme: string, ~url: string) => unit =
  "unregisterProtocolHandler"
