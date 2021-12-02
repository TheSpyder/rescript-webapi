/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcookies
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorCookies = T.t

  @get
  external cookieEnabled: t_navigatorCookies => bool = "cookieEnabled"
}
