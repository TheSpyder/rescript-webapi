type t

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorid */

@get external userAgent: t => string = "userAgent"
@get external vendor: t => string = "vendor"

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorlanguage */

/**
 * Returns a BCP 47 language tag
 */
@get external language: t => string = "language"

/**
 * Experimental. Returns a readonly array of BCP 47 language tags
 */
// @get external languages: t => array<string> = "languages"

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatoronline */

@get external onLine: t => bool = "onLine"

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcontentutils */

@send
external _registerProtocolHandler: (t, string, string) => unit = "registerProtocolHandler"

let registerProtocolHandler = (t, ~scheme, ~url) => _registerProtocolHandler(t, scheme, url)

@send
external _unregisterProtocolHandler: (t, string, string) => unit = "unregisterProtocolHandler"

let unregisterProtocolHandler = (t, ~scheme, ~url) => _unregisterProtocolHandler(t, scheme, url)

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcookies */

@get
external cookieEnabled: t => bool = "cookieEnabled"

/* Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorplugins */

@send external javaEnabled: t => bool = "javaEnabled"
@get external pdfViewerEnabled: t => bool = "pdfViewerEnabled"

/* Spec: https://html.spec.whatwg.org/multipage/workers.html#navigatorconcurrenthardware */

@get external hardwareConcurrency: t => float = "hardwareConcurrency"
