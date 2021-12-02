/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorlanguage
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorLanguage = T.t

  /**
   * Returns a BCP 47 language tag
   */
  @get external language: t_navigatorLanguage => string = "language"

  /**
   * Experimental. Returns a readonly array of BCP 47 language tags
   */
  @get external languages: t_navigatorLanguage => array<string> = "languages"
}
