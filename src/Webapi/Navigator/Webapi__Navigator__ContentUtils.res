/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorcontentutils
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorContentUtils = T.t

  @send
  external registerProtocolHandlerExn: (t_navigatorContentUtils, string, string) => unit =
    "registerProtocolHandler"

  @send
  external unregisterProtocolHandlerExn: (t_navigatorContentUtils, string, string) => unit =
    "unregisterProtocolHandler"
}
