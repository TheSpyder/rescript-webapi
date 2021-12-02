/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatoronline
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorOnLine = T.t

  @get external onLine: t_navigatorOnLine => bool = "onLine"
}
