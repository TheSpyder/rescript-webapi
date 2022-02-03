/**
 * Spec: https://html.spec.whatwg.org/multipage/workers.html#workernavigator
 */
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
  /* Spec: https://html.spec.whatwg.org/multipage/workers.html#navigatorconcurrenthardware */
  hardwareConcurrency: int,
}
